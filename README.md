# Next14 CMP for Android

## Requirements

The Next14 CMP SDK requires a deployment target of iOS 10.0 or higher. following architectures are supported: armv7, armv7s and arm64 for devices, i386 and x86_64 for the iOS Simulator. Bitcode is also supported.

## Installation

1. Add the following to your Podfile:
  ```Podfile

  pod 'Next14CMP'

  ```
2. Install pod by running the following command in the directory with the Podfile:
  ```bash

  $ pod install

  ```

More on CocoaPods [here](https://cocoapods.org/).

## How to use

To present the consent screen to the user, simply call the `Next14CMP` method
`presentCMPFromPresentingViewController:apiKey:gdprApplies` from your main screen providing your unique API KEY.

```objc

    // Add this in your viewDidAppear or similar method
    if (Next14CMP.shared.shouldPresentCMP) {
        [Next14CMP.shared presentCMPFromPresentingViewController:self apiKey:@"<YOUR API KEY>" gdprApplies:YES];
    }

```