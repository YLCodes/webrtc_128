// Copyright 2024 The Chromium Authors
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#import "ios/chrome/app/identity_confirmation_app_agent.h"

#import "base/logging.h"
#import "base/metrics/field_trial_params.h"
#import "base/metrics/histogram_functions.h"
#import "base/strings/sys_string_conversions.h"
#import "components/prefs/pref_service.h"
#import "ios/chrome/app/application_delegate/app_state.h"
#import "ios/chrome/browser/ntp/ui_bundled/new_tab_page_feature.h"
#import "ios/chrome/browser/shared/coordinator/scene/scene_controller.h"
#import "ios/chrome/browser/shared/coordinator/scene/scene_state.h"
#import "ios/chrome/browser/shared/coordinator/scene/scene_state_observer.h"
#import "ios/chrome/browser/shared/model/browser/browser.h"
#import "ios/chrome/browser/shared/model/browser/browser_provider.h"
#import "ios/chrome/browser/shared/model/browser/browser_provider_interface.h"
#import "ios/chrome/browser/shared/model/prefs/pref_names.h"
#import "ios/chrome/browser/shared/model/profile/profile_ios.h"
#import "ios/chrome/browser/shared/public/commands/command_dispatcher.h"
#import "ios/chrome/browser/shared/public/commands/snackbar_commands.h"
#import "ios/chrome/browser/shared/public/features/features.h"
#import "ios/chrome/browser/shared/ui/util/snackbar_util.h"
#import "ios/chrome/browser/signin/model/authentication_service.h"
#import "ios/chrome/browser/signin/model/authentication_service_factory.h"
#import "ios/chrome/browser/signin/model/chrome_account_manager_service.h"
#import "ios/chrome/browser/signin/model/chrome_account_manager_service_factory.h"
#import "ios/chrome/grit/ios_strings.h"
#import "ui/base/l10n/l10n_util.h"

@implementation IdentityConfirmationAppAgent {
  // This code ensures only one snackbar appears at a time on an iPad in
  // split-screen mode (where two scenes are foreground active simultaneously).
  // It does this by resetting this boolean only when any of the scenes become
  // inactive or in background.
  BOOL _foregroundActiveEventAlreadyHandled;
}

#pragma mark - SceneObservingAppAgent

- (void)sceneState:(SceneState*)sceneState
    transitionedToActivationLevel:(SceneActivationLevel)level {
  if (self.appState.initStage != InitStageFinal) {
    return;
  }

  [super sceneState:sceneState transitionedToActivationLevel:level];
  switch (level) {
    case SceneActivationLevelBackground:
    case SceneActivationLevelForegroundInactive:
    case SceneActivationLevelDisconnected:
    case SceneActivationLevelUnattached:
      _foregroundActiveEventAlreadyHandled = NO;
      break;

    case SceneActivationLevelForegroundActive:
      if (!_foregroundActiveEventAlreadyHandled) {
        [self maybeShowIdentityConfirmationSnackbarWithSceneState:sceneState];
        _foregroundActiveEventAlreadyHandled = YES;
      }
      break;
  }
}

- (void)appState:(AppState*)appState
    didTransitionFromInitStage:(InitStage)previousInitStage {
  if (!appState.foregroundActiveScene) {
    return;
  }
  if (self.appState.initStage != InitStageFinal) {
    return;
  }

  [super appState:appState didTransitionFromInitStage:previousInitStage];
  if (!_foregroundActiveEventAlreadyHandled) {
    // In case of having a foregroundActiveScene before reaching an
    // InitStageFinal, this will be the fallback to show the snackbar.
    [self maybeShowIdentityConfirmationSnackbarWithSceneState:
              appState.foregroundActiveScene];
    _foregroundActiveEventAlreadyHandled = YES;
  }
}

#pragma mark - Private

// These values are persisted to logs. Entries should not be renumbered and
// numeric values should never be reused.
// LINT.IfChange
enum class IdentityConfirmationSnackbarDecision {
  kShouldShow = 0,
  kDontShowNoAccount = 1,
  kDontShowSingleAccount = 2,
  kDontShowNotOnStartPage = 3,
  kDontShowShownRecently = 4,
  kDontShowImpressionLimitReached = 5,
  kDontShowFeatureDisabled = 6,
  kMaxValue = kDontShowFeatureDisabled
};
// LINT.ThenChange(/tools/metrics/histograms/metadata/signin/enums.xml)

- (IdentityConfirmationSnackbarDecision)
    shouldShowIdentityConfirmationSnackbarWithSceneState:
        (SceneState*)sceneState {
  Browser* browser =
      sceneState.browserProviderInterface.mainBrowserProvider.browser;
  AuthenticationService* authenticationService =
      AuthenticationServiceFactory::GetForBrowserState(
          browser->GetBrowserState());
  if (!authenticationService->HasPrimaryIdentity(
          signin::ConsentLevel::kSignin)) {
    return IdentityConfirmationSnackbarDecision::kDontShowNoAccount;
  }

  ChromeAccountManagerService* accountManagerService =
      ChromeAccountManagerServiceFactory::GetForBrowserState(
          browser->GetBrowserState());
  NSArray<id<SystemIdentity>>* allIdentities =
      accountManagerService->GetAllIdentities();
  if ([allIdentities count] <= 1) {
    return IdentityConfirmationSnackbarDecision::kDontShowSingleAccount;
  }

  // TODO(crbug.com/336720134): Detect the kDontShowNotOnStartPage case.
  // TODO(crbug.com/356425783): Also record it in metrics.

  PrefService* prefService = browser->GetBrowserState()->GetPrefs();

  const int displayCount =
      prefService->GetInteger(prefs::kIdentityConfirmationSnackbarDisplayCount);
  const base::Time lastPrompted =
      prefService->GetTime(prefs::kIdentityConfirmationSnackbarLastPromptTime);

  base::TimeDelta identityConfirmationMinDisplayInterval;
  if (displayCount == 0) {
    // Wait 1 day before the first reminder.
    // Note: lastPrompted in this case is equal to kLastSigninTimestamp.
    identityConfirmationMinDisplayInterval =
        kIdentityConfirmationMinDisplayInterval1.Get();
  } else if (displayCount == 1) {
    // Wait 7 days before the second reminder.
    identityConfirmationMinDisplayInterval =
        kIdentityConfirmationMinDisplayInterval2.Get();
  } else if (displayCount == 2) {
    // Wait 30 days before the third reminder.
    identityConfirmationMinDisplayInterval =
        kIdentityConfirmationMinDisplayInterval3.Get();
  } else {
    // Stop showing after the third reminder.
    return IdentityConfirmationSnackbarDecision::
        kDontShowImpressionLimitReached;
  }

  if (base::Time::Now() - lastPrompted <
      identityConfirmationMinDisplayInterval) {
    return IdentityConfirmationSnackbarDecision::kDontShowShownRecently;
  }

  // At this point, the snackbar will be shown, except if the feature flag is
  // disabled. Either way, update the prefs, so that the metrics remain
  // comparable between enabled and disabled groups.
  prefService->SetInteger(prefs::kIdentityConfirmationSnackbarDisplayCount,
                          displayCount + 1);
  prefService->SetTime(prefs::kIdentityConfirmationSnackbarLastPromptTime,
                       base::Time::Now());

  if (!base::FeatureList::IsEnabled(kIdentityConfirmationSnackbar)) {
    return IdentityConfirmationSnackbarDecision::kDontShowFeatureDisabled;
  }

  return IdentityConfirmationSnackbarDecision::kShouldShow;
}

- (void)maybeShowIdentityConfirmationSnackbarWithSceneState:
    (SceneState*)sceneState {
  IdentityConfirmationSnackbarDecision decision =
      [self shouldShowIdentityConfirmationSnackbarWithSceneState:sceneState];

  base::UmaHistogramEnumeration("Signin.IdentityConfirmationSnackbarDecision",
                                decision);

  if (decision != IdentityConfirmationSnackbarDecision::kShouldShow) {
    return;
  }

  Browser* browser =
      sceneState.browserProviderInterface.mainBrowserProvider.browser;
  AuthenticationService* authenticationService =
      AuthenticationServiceFactory::GetForBrowserState(
          browser->GetBrowserState());
  id<SystemIdentity> systemIdentity =
      authenticationService->GetPrimaryIdentity(signin::ConsentLevel::kSignin);
  DCHECK(systemIdentity);
  NSString* accountName = systemIdentity.userGivenName
                              ? systemIdentity.userGivenName
                              : systemIdentity.userEmail;
  MDCSnackbarMessage* snackbarTitle = CreateSnackbarMessage(
      l10n_util::GetNSStringF(IDS_IOS_ACCOUNT_MENU_SWITCH_CONFIRMATION_TITLE,
                              base::SysNSStringToUTF16(accountName)));
  CommandDispatcher* dispatcher = browser->GetCommandDispatcher();
  id<SnackbarCommands> snackbarCommandsHandler =
      HandlerForProtocol(dispatcher, SnackbarCommands);
  [snackbarCommandsHandler showSnackbarMessage:snackbarTitle bottomOffset:0];
}

@end
