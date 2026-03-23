# WeDoBooks SDK for iOS

The WeDoBooks SDK allows partners to easily integrate digital book experiences into their own apps. The SDK provides a simple Swift API for enabling ebook reading and audiobook listening with numerous ways of customizing the UI to fit your own brand.

## Requirements

- iOS 15.0+
- Swift 6
- Xcode (latest stable recommended)

## Installation (Swift Package Manager)

1. In Xcode, open your app project.
2. Go to **File > Add Packages...**
3. Enter the package URL:

   `https://github.com/wedobooks/wedobooks-sdk-ios-spm`

4. Choose your version rule (recommended: latest release exact).
5. Add the package product(s) to your app target.

Then import in Swift files:

```swift
import WeDoBooks
```

## Installation (CocoaPods)

Add to your `Podfile`:

```ruby
platform :ios, '15.0'
use_frameworks! :linkage => :static

target 'YourApp' do
  pod 'WeDoBooks', '~> 1.1'
end
```

Install pods:

```bash
pod install
```

Open the generated `.xcworkspace` and build.

### CocoaPods optional: Suppress CocoaPods Warning Noise

Some environments show warnings from transitive pods (for example deployment target normalization or `Create Symlinks to Header Folders` script-phase warnings).  
Integration works without these tweaks, so treat this as optional.

```ruby
post_install do |installer|
  deployment_target = '15.0'

  installer.pods_project.targets.each do |pod_target|
    pod_target.build_configurations.each do |config|
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = deployment_target
    end

    pod_target.shell_script_build_phases.each do |phase|
      next unless phase.name == 'Create Symlinks to Header Folders'
      phase.always_out_of_date = '1'
    end
  end
end
```

## Sample app

- Take a look at our sample app for how to get started: https://github.com/wedobooks/wedobooks-sdk-ios-sample
