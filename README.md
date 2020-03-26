# StepProgressBar

[![CI Status](https://img.shields.io/travis/rust-lang/rust.svg)](https://travis-ci.org/SerhiiMatvieiev/StepProgressBar)
[![Version](https://img.shields.io/cocoapods/v/StepProgressBar.svg?style=flat)](http://cocoapods.org/pods/StepProgressBar)
![Version](https://img.shields.io/badge/Swift-3.0%2B-orange.svg?style=flat)
[![License](https://img.shields.io/badge/license-MIT-blue.svg?style=flat)](http://cocoapods.org/pods/StepProgressBar)
[![Platform](https://img.shields.io/cocoapods/p/StepProgressBar.svg?style=flat)](http://cocoapods.org/pods/StepProgressBar)

## Introduction

`StepProgressBar` is a very simple and customizable step-by-step progress bar.

![stepprogressbar](https://cloud.githubusercontent.com/assets/14834451/25133702/18165028-2456-11e7-8348-2e5b7ab4a5eb.gif)

## Installation

### CocoaPods

StepProgressBar is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'StepProgressBar'
```
### Manually

Copy the `StepProgressBar.swift` to your Xcode project. That should do it.

## Usage

StepProgressBar can be used via code or interface builder.

### Interface Builder

1. Drag `UIView` to your View Controller in the Storyboard.
2. Select your view and in the `Identity Inspector` change the class to `StepProgressBar`.
> :warning: Importand - change the module to `StepProgressBar` too.

<img width="264" alt="screen shot 2017-04-18 at 17 33 46" src="https://cloud.githubusercontent.com/assets/14834451/25136278/403fd02c-245d-11e7-897a-c0e1230c2f23.png">

3. Customization

<img width="258" alt="screen shot 2017-04-18 at 17 16 52" src="https://cloud.githubusercontent.com/assets/14834451/25137351/3129707c-2460-11e7-9cea-abccc2d395dd.png">

4. Import `StepProgressBar` in your view controller class.
```swift
import StepProgressBar
```
5. Create an `IBOutlet` of the view in your view controller class.
```swift
@IBOutlet weak var progressView: StepProgressBar!
```

For `Next` step:
```swift
progressView.next()
```

For `Previous` step:
```swift
progressView.previous()
```

### Code

Use the traditional init methods and properties.

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

- iOS 9.0+
- Xcode 10.0+
- Swift 4.0+

## Author

SerhiiMatvieiev, iamsergeymatveev@gmail.com

## License

StepProgressBar is available under the MIT license. See the LICENSE file for more info.
