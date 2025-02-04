// Copyright 2022 The Chromium Authors
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#import "ios/chrome/app/feed_app_agent.h"

#import <BackgroundTasks/BackgroundTasks.h>
#import <UserNotifications/UserNotifications.h>

#import "components/metrics/metrics_service.h"
#import "components/search_engines/prepopulated_engines.h"
#import "components/search_engines/template_url.h"
#import "components/search_engines/template_url_prepopulate_data.h"
#import "components/search_engines/template_url_service.h"
#import "components/signin/public/identity_manager/identity_manager.h"
#import "ios/chrome/app/application_delegate/app_state.h"
#import "ios/chrome/app/background_refresh_constants.h"
#import "ios/chrome/app/profile/profile_state.h"
#import "ios/chrome/browser/content_notification/model/content_notification_util.h"
#import "ios/chrome/browser/discover_feed/model/discover_feed_service.h"
#import "ios/chrome/browser/discover_feed/model/discover_feed_service_factory.h"
#import "ios/chrome/browser/discover_feed/model/feed_constants.h"
#import "ios/chrome/browser/ntp/shared/metrics/feed_metrics_recorder.h"
#import "ios/chrome/browser/push_notification/model/provisional_push_notification_util.h"
#import "ios/chrome/browser/push_notification/model/push_notification_client_id.h"
#import "ios/chrome/browser/search_engines/model/template_url_service_factory.h"
#import "ios/chrome/browser/shared/model/application_context/application_context.h"
#import "ios/chrome/browser/shared/model/profile/profile_ios.h"
#import "ios/chrome/browser/shared/model/utils/first_run_util.h"
#import "ios/chrome/browser/shared/public/features/features.h"
#import "ios/chrome/browser/signin/model/authentication_service.h"
#import "ios/chrome/browser/signin/model/authentication_service_factory.h"
#import "ios/chrome/browser/signin/model/identity_manager_factory.h"

@implementation FeedAppAgent {
  // Set to YES when the app is foregrounded.
  BOOL _wasForegroundedAtLeastOnce;
}

#pragma mark - AppStateObserver

- (void)appState:(AppState*)appState
    didTransitionFromInitStage:(InitStage)previousInitStage {
  if (appState.initStage == InitStageBrowserBasic) {
    // Apple docs say that background tasks must be registered before the
    // end of `application:didFinishLaunchingWithOptions:`.
    // InitStageBrowserBasic fulfills that requirement.
    [self maybeRegisterBackgroundRefreshTask];
    // This is a provisional permission, which does not prompt the user at this
    // point.
    [self maybeRequestUserNotificationPermissions];
  } else if (appState.initStage ==
             InitStageBrowserObjectsForBackgroundHandlers) {
    // Save the value of the feature flag now since 'base::FeatureList' was
    // not available in `InitStageBrowserBasic`.
    // IsFeedBackgroundRefreshCapabilityEnabled() simply reads the saved value
    // saved by SaveFeedBackgroundRefreshCapabilityEnabledForNextColdStart(). Do
    // not wrap this in IsFeedBackgroundRefreshCapabilityEnabled() -- in this
    // case, a new value would never be saved again once we save NO, since the
    // NO codepath would not execute saving a new value.
    SaveFeedBackgroundRefreshCapabilityEnabledForNextColdStart();
  } else if (appState.initStage == InitStageNormalUI) {
    if (IsWebChannelsEnabled() && IsDiscoverFeedServiceCreatedEarly()) {
      // Starting the DiscoverFeedService is required before users are able to
      // interact with any tab because following a web channel (part of the
      // Following Feed feature which depends on the DiscoverFeedService) is
      // available on any tab, and not just the NTP where the Following Feed
      // lives. This line is intended to crash if DiscoverFeedService is not
      // able to be instantiated here.
      AuthenticationService* authService =
          AuthenticationServiceFactory::GetForBrowserState(
              self.appState.mainProfile.browserState);
      if (authService &&
          authService->HasPrimaryIdentity(signin::ConsentLevel::kSignin)) {
        DiscoverFeedServiceFactory::GetForBrowserState(
            self.appState.mainProfile.browserState);
      }
    }

    BOOL isContentNotificationProvisionalEnabled = NO;
    if (IsContentNotificationExperimentEnabled()) {
      // Only start doing the content notificaiton user eligibiliey check when
      // content notification experiment is enabled.
      AuthenticationService* authService =
          AuthenticationServiceFactory::GetForBrowserState(
              self.appState.mainProfile.browserState);
      bool isUserSignedIn = authService && authService->HasPrimaryIdentity(
                                               signin::ConsentLevel::kSignin);

      const TemplateURL* defaultSearchURLTemplate =
          ios::TemplateURLServiceFactory::GetForBrowserState(
              self.appState.mainProfile.browserState)
              ->GetDefaultSearchProvider();

      bool isDefaultSearchEngine = defaultSearchURLTemplate &&
                                   defaultSearchURLTemplate->prepopulate_id() ==
                                       TemplateURLPrepopulateData::google.id;

      PrefService* pref_service =
          self.appState.mainProfile.browserState->GetPrefs();

      isContentNotificationProvisionalEnabled =
          IsContentNotificationProvisionalEnabled(
              isUserSignedIn, isDefaultSearchEngine, pref_service);
    }

    if (isContentNotificationProvisionalEnabled) {
      // This method does not show a UI prompt to the user. Provisional
      // notifications are authorized without any user input if the user hasn't
      // previously disabled notifications.
      AuthenticationService* authService =
          AuthenticationServiceFactory::GetForBrowserState(
              self.appState.mainProfile.browserState);
      std::vector<PushNotificationClientId> clientIds = {
          PushNotificationClientId::kContent,
          PushNotificationClientId::kSports};
      [ProvisionalPushNotificationUtil
          enrollUserToProvisionalNotificationsForClientIds:clientIds
                                           withAuthService:authService
                                     deviceInfoSyncService:nil];
    }
  }
  [super appState:appState didTransitionFromInitStage:previousInitStage];
}

#pragma mark - SceneObservingAppAgent

- (void)appDidEnterBackground {
  if (IsFeedBackgroundRefreshEnabled()) {
    [self scheduleBackgroundRefresh];
  } else if ([self feedServiceIfCreated]) {
    [self feedServiceIfCreated]->RefreshFeed(
        FeedRefreshTrigger::kForegroundAppClose);
  }
}

- (void)appDidEnterForeground {
  _wasForegroundedAtLeastOnce = YES;
  if (IsFeedBackgroundRefreshCapabilityEnabled()) {
    // This is not strictly necessary, but it makes it more explicit. The OS
    // limits to 1 refresh task at any time, and a new request will replace a
    // previous request. Tasks are only executed in the background.
    [BGTaskScheduler.sharedScheduler cancelAllTaskRequests];
  }
}

#pragma mark - Helpers

// Returns the DiscoverFeedService.
- (DiscoverFeedService*)feedService {
  // DiscoverFeedService is expected to be available since the startup sequence
  // should create background objects before this method is called. This line is
  // intended to crash if DiscoverFeedService is not available.
  return DiscoverFeedServiceFactory::GetForBrowserState(
      self.appState.mainProfile.browserState, /*create=*/true);
}

// Returns the DiscoverFeedService if created.
- (DiscoverFeedService*)feedServiceIfCreated {
  return DiscoverFeedServiceFactory::GetForBrowserState(
      self.appState.mainProfile.browserState, /*create=*/false);
}

// Returns the FeedMetricsRecorder.
- (FeedMetricsRecorder*)feedMetricsRecorder {
  return self.feedService->GetFeedMetricsRecorder();
}

// Registers handler for the background refresh task. According to
// documentation, this must complete before the end of
// `applicationDidFinishLaunching`.
- (void)maybeRegisterBackgroundRefreshTask {
  if (!IsFeedBackgroundRefreshCapabilityEnabled()) {
    return;
  }
  __weak FeedAppAgent* weakSelf = self;
  [BGTaskScheduler.sharedScheduler
      registerForTaskWithIdentifier:kFeedBackgroundRefreshTaskIdentifier
                         usingQueue:nil
                      launchHandler:^(BGTask* task) {
                        dispatch_async(dispatch_get_main_queue(), ^{
                          [weakSelf handleBackgroundRefreshTask:task];
                        });
                      }];
}

// Schedules a background refresh task with an earliest begin date in the
// future. The OS limits to 1 refresh task at any time, and a new request will
// replace a previous request. Tasks are only executed in the background.
// TODO(crbug.com/40231475): It is critically important that we do not schedule
// other background fetch tasks (e.g., with other identifiers) anywhere,
// including other files. The OS only allows one fetch task at a time.
// Eventually, background fetches should be managed by a central manager.
- (void)scheduleBackgroundRefresh {
  // Do not DCHECK whether background refreshes were enabled at startup because
  // this is also called from the background task handler, and the value could
  // have changed during a cold start.
  if (!IsFeedBackgroundRefreshEnabled()) {
    return;
  }
  BGAppRefreshTaskRequest* request = [[BGAppRefreshTaskRequest alloc]
      initWithIdentifier:kFeedBackgroundRefreshTaskIdentifier];
  request.earliestBeginDate = [self earliestBackgroundRefreshBeginDate];
  // Error in scheduling is intentionally not handled since the fallback is that
  // the user will just refresh in the foreground.
  // TODO(crbug.com/40231475): Consider logging error in histogram.
  [BGTaskScheduler.sharedScheduler submitTaskRequest:request error:nil];
}

// Returns the earliest begin date to set on the refresh task. Either returns a
// date from DiscoverFeedService or an override date created with the override
// interval in Experimental Settings.
- (NSDate*)earliestBackgroundRefreshBeginDate {
  NSDate* earliestBeginDate = nil;
  if (IsFeedOverrideDefaultsEnabled()) {
    earliestBeginDate = [NSDate
        dateWithTimeIntervalSinceNow:GetBackgroundRefreshIntervalInSeconds()];
  } else {
    // This is expected to crash if FeedService is not available.
    earliestBeginDate =
        [self feedService]->GetEarliestBackgroundRefreshBeginDate();
  }
  return earliestBeginDate;
}

// This method is called when the app is in the background.
- (void)handleBackgroundRefreshTask:(BGTask*)task {
  // Do not DCHECK whether background refreshes were enabled at startup because
  // the value could have changed during a cold start.
  if (!IsFeedBackgroundRefreshEnabled()) {
    return;
  }

  // TODO(crbug.com/40249480): Kill the app if in a cold start because currently
  // there are issues with background cold starts.
  if (!_wasForegroundedAtLeastOnce) {
    [self handleColdStartAndKillApp];
  }
  if (IsRecurringBackgroundRefreshScheduleEnabled()) {
    [self scheduleBackgroundRefresh];
  }
  task.expirationHandler = ^{
    dispatch_async(dispatch_get_main_queue(), ^{
      // This is expected to crash if FeedService is not available.
      [self feedService]->HandleBackgroundRefreshTaskExpiration();
      [self maybeNotifyRefreshSuccess:NO];
    });
  };

  // Cold starts are killed earlier in this method, so warm and cold starts
  // cannot be recorded at the same time.
  [self recordWarmStartMetrics];

  // This is expected to crash if FeedService is not available.
  [self feedService]->PerformBackgroundRefreshes(^(BOOL success) {
    [self maybeNotifyRefreshSuccess:success];
    [task setTaskCompletedWithSuccess:success];
  });
}

// Records cold start histogram and kills app.
- (void)handleColdStartAndKillApp {
  [FeedMetricsRecorder
      recordFeedRefreshTrigger:FeedRefreshTrigger::kBackgroundColdStart];

  // TODO(crbug.com/40249480): Remove this workaround and enable background
  // cold starts.
  [self maybeNotifyRefreshSuccess:NO];
  GetApplicationContext()->GetMetricsService()->OnAppEnterBackground();
  exit(0);
}

// Record refresh trigger for warm start.
- (void)recordWarmStartMetrics {
    [FeedMetricsRecorder
        recordFeedRefreshTrigger:FeedRefreshTrigger::kBackgroundWarmStart];
}

#pragma mark - Refresh Completion Notifications (only enabled by Experimental Settings)

// Request provisional permission, which does not explicitly prompt the user for
// permission. Instead, the OS delivers provisional notifications quietly and
// are visible in the notification center's history. For active debugging, the
// tester can go to the Settings App and turn on full permissions for banners
// and sounds.
- (void)maybeRequestUserNotificationPermissions {
  if (!IsFeedBackgroundRefreshCompletedNotificationEnabled()) {
    return;
  }
  UNUserNotificationCenter* center =
      UNUserNotificationCenter.currentNotificationCenter;
  [center requestAuthorizationWithOptions:(UNAuthorizationOptionProvisional |
                                           UNAuthorizationOptionAlert |
                                           UNAuthorizationOptionSound)
                        completionHandler:^(BOOL granted, NSError* error){
                        }];
}

// Requests OS to send a local user notification with `title`.
- (void)maybeRequestNotification:(NSString*)title {
  if (!IsFeedBackgroundRefreshCompletedNotificationEnabled()) {
    return;
  }
  UNMutableNotificationContent* content =
      [[UNMutableNotificationContent alloc] init];
  content.title = title;
  content.body = @"This is enabled via Experimental Settings which is not "
                 @"available in stable.";
  UNTimeIntervalNotificationTrigger* trigger =
      [UNTimeIntervalNotificationTrigger triggerWithTimeInterval:(1)
                                                         repeats:NO];
  UNNotificationRequest* request =
      [UNNotificationRequest requestWithIdentifier:[[NSUUID UUID] UUIDString]
                                           content:content
                                           trigger:trigger];
  UNUserNotificationCenter* center =
      UNUserNotificationCenter.currentNotificationCenter;
  [center addNotificationRequest:request withCompletionHandler:nil];
}

// Requests OS to send a local user notification that a feed refresh has been
// attempted in the background. The notification title says 'success' or
// 'failure' based on `success`.
- (void)maybeNotifyRefreshSuccess:(BOOL)success {
  NSString* title = nil;
  if (success) {
    title = @"Feed Bg Refresh Success";
  } else {
    title = @"Feed Bg Refresh Failure";
  }
  [self maybeRequestNotification:title];
  SetFeedRefreshTimestamp([NSDate now], kFeedLastBackgroundRefreshTimestamp);
}

@end
