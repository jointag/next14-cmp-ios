# Next14 CMP for iOS

## Requirements

The Next14 CMP SDK requires a deployment target of iOS 11.0 or higher.
following architectures are supported: arm64 for devices, i386 and x86_64 for
the iOS Simulator. Bitcode is also supported.

## Installation

1. Add the following to your Podfile:

```
  pod 'Next14CMP', '~> 2.0.0'
```

2. Install pod by running the following command in the directory with the Podfile:

```
$ pod install
```

More on CocoaPods [here](https://cocoapods.org/).

## How to use

### Initialization

The Next14 CMP SDK need to retrieves configurations at startup which contains
all the data needed to present the consent screen to the user.

The initialization is done via the `start` method.

```swift
  CMP.shared.start(apiKey: "<YOUR API KEY>", settings: customSettings) { result in 
    if case .success(_) = result {
      print("Configurations downloaded successfully")
    }
  }
```

#### Parameters

| Parameter | Description                                           | Required |
| --------- | ----------------------------------------------------- | -------- |
| apiKey    | The application unique identifier on the CMP platform | Yes      |
| settings  | Additional settings to customize the SDK behaviour    | No       |

#### CMPSettings

| Parameter                     | Description | Default |
| ----------------------------- | ----------- | ------- |
| consentPreferenceValidityDays | the number of days since the last time the user has given consent, after which the request for consent is presented again to the user | 180 |


### Display Consent Screen

After the SDK has been initialized, the application should call the
`shouldPresentCMP` method to check if the consent screen need to be displayed to
the user, and if so it should call the `present` method.

The `present` method takes an optional `onComplete:` callback that will be
invoked when the user has expressed his consent and the consent UI has been
fully dismissed.

```swift
  if (CMP.shared.shouldPresentCMP()) {
      CMP.shared.present(from: self) {
          // The user has expressed his consent
      }
  }
```

#### CMPSdk.present Parameters

| Parameter    | Description                                           | Required |
| ------------ | ----------------------------------------------------- | -------- |
| from         | The presenting UIVieController                        | Yes      |
| gdprApplies  | whether the GDPR applies to the current user or not   | No       |
| onComplete   | an optional callback to be notified when the consent screen is closed  | No       |
