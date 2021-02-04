# Next14 CMP for iOS

## Requirements

The Next14 CMP SDK requires a deployment target of iOS 11.0 or higher. following architectures are supported: arm64 for devices, i386 and x86_64 for the iOS Simulator. Bitcode is also supported.

## Installation

1. Add the following to your Podfile:

```
  pod 'Next14CMP', '~> 1.0.1'
```

2. Install pod by running the following command in the directory with the Podfile:

```
$ pod install
```

More on CocoaPods [here](https://cocoapods.org/).

## How to use

To present the consent screen to the user, simply call the `CMP` method
`presentCMPFromPresentingViewController:apiKey:gdprApplies` from your main screen providing your unique API KEY.

```objc
// Add this in your viewDidAppear or similar method
if (CMP.shared.shouldPresentCMP) {
    [CMP.shared presentCMPFromPresentingViewController:self apiKey:@"<YOUR API KEY>" gdprApplies:YES];
}
```
