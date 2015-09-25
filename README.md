# SSBaseClass

[![Build Status](https://travis-ci.org/shwetsolanki/SSBaseClass.svg?style=flat)](https://travis-ci.org/shwetsolanki/SSBaseClass)
[![Version](https://img.shields.io/cocoapods/v/SSBaseClass.svg?style=flat)](http://cocoapods.org/pods/SSBaseClass)
[![License](https://img.shields.io/cocoapods/l/SSBaseClass.svg?style=flat)](http://opensource.org/licenses/MIT)
[![Platform](https://img.shields.io/cocoapods/p/SSBaseClass.svg?style=flat)](http://cocoapods.org/pods/SSBaseClass)

Basic Customisation for UIControls using IB_Designable and IBInspectable subclasses. 
Boilerplate code for Corner Radius, Shadow, Themed Font and Color for Label, TextField and TextView and many more.

### SSButton
![alt tag](https://raw.github.com/shwetsolanki/SSBaseClass/master/Pod/Screenshots/screenshot1.png)

### SSLabel
![alt tag](https://raw.github.com/shwetsolanki/SSBaseClass/master/Pod/Screenshots/screenshot2.png)

### Storyboard
![alt tag](https://raw.github.com/shwetsolanki/SSBaseClass/master/Pod/Screenshots/screenshot3.png)

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

Set the Custom class for the UIControl to SSView / SSButton / SSLabel, etc and start configuring on IB
![alt tag](https://raw.github.com/shwetsolanki/SSBaseClass/master/Pod/Screenshots/screenshot4.png)

## Requirements

## Installation

SSBaseClass is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "SSBaseClass"
```

Add this to Podfile after Platform to avoid the error `IB Designables: Failed to update auto layout status: Failed to load designables from path (null)`
```ruby
platform :ios, '8.0'

use_frameworks!
```

## Author

Shwet Solanki, me@shwet.net

## License

SSBaseClass is available under the MIT license. See the LICENSE file for more info.
