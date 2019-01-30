# BNCustomView

[![Version](https://img.shields.io/cocoapods/v/BNCustomView.svg?style=flat)](https://cocoapods.org/pods/BNCustomView)
[![License](https://img.shields.io/cocoapods/l/BNCustomView.svg?style=flat)](https://cocoapods.org/pods/BNCustomView)
[![Platform](https://img.shields.io/cocoapods/p/BNCustomView.svg?style=flat)](https://cocoapods.org/pods/BNCustomView)


![Custom View](https://media.giphy.com/media/1n92xpzZ1W0BbfBNl7/giphy.gif?raw=true)


## Installation

BNCustomView is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'BNCustomView'
```

## Implementation

```
customViewDemo.logoBackgroundColor = UIColor(red:0.72, green:0.56, blue:0.02, alpha:1.0)
customViewDemo.borderColor = .white
customViewDemo.textFont = UIFont(name: "Arial-BoldItalicMT", size: 18)
customViewDemo.textColor = customViewDemo.logoBackgroundColor
customViewDemo.viewBackgroundColor = .clear
customViewDemo.textTip = "stringContent"
customViewDemo.setViewType = BNCustomView.viewType.Quotation
customViewDemo.forwardTiltPadding = 30
```

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Author

BijeshNair, bijesh4@gmail.com

## License

BNCustomView is available under the MIT license. See the LICENSE file for more info.
