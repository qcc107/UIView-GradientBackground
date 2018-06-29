# UIView-GradientBackground

[![language](https://img.shields.io/badge/Language-Objective--C-7D6FFF.svg)](https://developer.apple.com/documentation/objectivec)&nbsp;
[![language](https://img.shields.io/badge/Language-Swift-6986FF.svg)](https://github.com/apple/swift)&nbsp;
[![Build Status](https://travis-ci.org/qcc107/UIViewController-CBPopup.svg?branch=master)](https://travis-ci.org/qcc107/UIViewController-CBPopup)&nbsp;
[![Support](https://img.shields.io/badge/support-iOS%209%2B%20-orange.svg?style=flat)](https://www.apple.com/nl/ios/)

# Using
![](https://github.com/qcc107/UIView-GradientBackground/blob/master/IMG_1580.png)

## 🌟 Features

- [x] Easy to use
- [x] User autolayout
- [x] Flexible configuration that can be gradient from different locations

## 📲 Installation

Just add UIView+GradientBackground.h and .m files to your project.

## 🌰 Usage
### Gradient a view's background

#### In your current viewcontroller:
```obj-c
#import "UIView+GradientBackground.h"
```
then
```obj-c
[self.view1 cb_gradientBackgroundFromPoint:CGPointMake(0, 0) toPoint:CGPointMake(1, 1) fromColor:[UIColor redColor] toColor:[UIColor orangeColor]];

[self.view2 cb_gradientBackgroundFromPoint:CGPointMake(0, 0) toPoint:CGPointMake(1, 0) fromColor:[UIColor redColor] toColor:[UIColor orangeColor]];

[self.view3 cb_gradientBackgroundFromPoint:CGPointMake(0, 0) toPoint:CGPointMake(0, 1) fromColor:[UIColor redColor] toColor:[UIColor orangeColor]];

[self.view4 cb_gradientBackgroundFromColor:[UIColor redColor] toColor:[UIColor orangeColor]];

```

### 📴 Remove

```obj-c
[self.view4 cb_removeGradientBackground];
```

## 😜 Issue
If you find a bug, open an issue.