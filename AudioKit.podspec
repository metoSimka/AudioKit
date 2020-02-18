  
{
  "name": "AudioKit",
  "version": "4.9.2",
  "authors": {
    "Aurelius Prochazka": "audiokit@audiokit.io"
  },
  "license": {
    "type": "MIT",
    "file": "LICENSE"
  },
  "homepage": "http://audiokit.io/",
  "social_media_url": "https://twitter.com/AudioKitMan",
  "documentation_url": "http://audiokit.io/docs/",
  "static_framework": true,
  "source": {
    "http": "https://github.com/AudioKit/AudioKit/releases/download/v4.9.2/AudioKit.framework.zip"
  },
  "summary": "Open-source audio synthesis, processing, & analysis platform.",
  "platforms": {
    "osx": "10.11",
    "ios": "9.0",
    "tvos": "10.0"
  },
  "cocoapods_version": ">= 1.5.0",
  "frameworks": [
    "AVFoundation"
  ],
  "libraries": [
    "c++"
  ],
  "user_target_xcconfig": {
    "ALWAYS_EMBED_SWIFT_STANDARD_LIBRARIES": "YES",
    "LIBRARY_SEARCH_PATHS": "$(TOOLCHAIN_DIR)/usr/lib/swift/$(PLATFORM_NAME)"
  }
  "swift_version": "5.0"
}
