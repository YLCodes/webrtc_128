// Copyright 2024 The Chromium Authors
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#include "third_party/blink/renderer/platform/peerconnection/instrumented_simulcast_adapter.h"

#include "base/numerics/safe_conversions.h"
#include "base/sequence_checker.h"
#include "base/thread_annotations.h"
#include "third_party/blink/renderer/platform/peerconnection/encoder_state_observer.h"
#include "third_party/blink/renderer/platform/peerconnection/instrumented_video_encoder_wrapper.h"
#include "third_party/webrtc/api/video_codecs/video_encoder_factory.h"

namespace blink {
class InstrumentedSimulcastAdapter::EncoderFactoryAdapter
    : public webrtc::VideoEncoderFactory {
 public:
  EncoderFactoryAdapter(webrtc::VideoEncoderFactory* encoder_factory,
                        EncoderStateObserver* state_callback,
                        bool is_primary)
      : encoder_factory_(encoder_factory),
        state_callback_(state_callback),
        is_primary_(is_primary) {}

  // webrtc::VideoEncoderFactory implementations.
  std::vector<webrtc::SdpVideoFormat> GetSupportedFormats() const override {
    return encoder_factory_->GetSupportedFormats();
  }

  std::vector<webrtc::SdpVideoFormat> GetImplementations() const override {
    return encoder_factory_->GetImplementations();
  }
  CodecSupport QueryCodecSupport(
      const webrtc::SdpVideoFormat& format,
      std::optional<std::string> scalability_mode) const override {
    return encoder_factory_->QueryCodecSupport(format, scalability_mode);
  }
  std::unique_ptr<webrtc::VideoEncoder> Create(
      const webrtc::Environment& env,
      const webrtc::SdpVideoFormat& format) override {
    DCHECK_CALLED_ON_VALID_SEQUENCE(sequence_checker_);
    std::unique_ptr<webrtc::VideoEncoder> encoder =
        encoder_factory_->Create(env, format);
    next_encoder_id_ += is_primary_ ? 1 : -1;
    return std::make_unique<InstrumentedVideoEncoderWrapper>(
        next_encoder_id_, std::move(encoder), state_callback_);
  }
  std::unique_ptr<webrtc::VideoEncoderFactory::EncoderSelectorInterface>
  GetEncoderSelector() const override {
    return encoder_factory_->GetEncoderSelector();
  }

 private:
  const raw_ptr<webrtc::VideoEncoderFactory> encoder_factory_;
  const raw_ptr<EncoderStateObserver> state_callback_;
  const bool is_primary_;

  int next_encoder_id_ GUARDED_BY_CONTEXT(sequence_checker_);
  SEQUENCE_CHECKER(sequence_checker_);
};

std::unique_ptr<InstrumentedSimulcastAdapter>
InstrumentedSimulcastAdapter::Create(
    const webrtc::Environment& env,
    webrtc::VideoEncoderFactory* primary_encoder_factory,
    webrtc::VideoEncoderFactory* secondary_encoder_factory,
    std::unique_ptr<EncoderStateObserver> encoder_state_observer,
    const webrtc::SdpVideoFormat& format) {
  std::unique_ptr<EncoderFactoryAdapter> primary_factory_adapter;
  std::unique_ptr<EncoderFactoryAdapter> secondary_factory_adapter;
  if (primary_encoder_factory) {
    primary_factory_adapter = std::make_unique<EncoderFactoryAdapter>(
        primary_encoder_factory, encoder_state_observer.get(),
        /*is_primary=*/true);
  }
  if (secondary_encoder_factory) {
    secondary_factory_adapter = std::make_unique<EncoderFactoryAdapter>(
        secondary_encoder_factory, encoder_state_observer.get(),
        /*is_primary=*/false);
  }
  return std::unique_ptr<InstrumentedSimulcastAdapter>(
      new InstrumentedSimulcastAdapter(env, std::move(primary_factory_adapter),
                                       std::move(secondary_factory_adapter),
                                       std::move(encoder_state_observer),
                                       format));
}

InstrumentedSimulcastAdapter::~InstrumentedSimulcastAdapter() {
  // EncoderStateObserver must outlive encoders.
  DestroyStoredEncoders();
}

InstrumentedSimulcastAdapter::InstrumentedSimulcastAdapter(
    const webrtc::Environment& env,
    std::unique_ptr<EncoderFactoryAdapter> primary_factory_adapter,
    std::unique_ptr<EncoderFactoryAdapter> secondary_factory_adapter,
    std::unique_ptr<EncoderStateObserver> encoder_state_observer,
    const webrtc::SdpVideoFormat& format)
    : webrtc::SimulcastEncoderAdapter(env,
                                      primary_factory_adapter.get(),
                                      secondary_factory_adapter.get(),
                                      format),
      encoder_state_observer_(std::move(encoder_state_observer)),
      primary_factory_adapter_(std::move(primary_factory_adapter)),
      secondary_factory_adapter_(std::move(secondary_factory_adapter)) {}
}  // namespace blink
