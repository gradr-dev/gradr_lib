<div align="center">
  
  <img src=".github/media/banner.png" height="250">
  
  
  Convert climbing grading systems with a really simple interface.

  [![Pub Version](https://img.shields.io/pub/v/gradr_lib?style=flat-square)](https://pub.dev/packages/gradr_lib)
  
</div>

---

> WORK IN PROGRESS, use at your own risk.

Have you ever needed to convert from one grading system to another? and had to implement the calculations by yourself? `gradr_lib` offers utilities for converting climbing grading systems with a really simple interface so you don't have to reinvent the wheel.

The library was initial going to be developed for the [Gradr App]() I've also created, but thought it might be cool to make it open-source and let the community use it and hopefully help improve it too!

> Gradr does all it can to make sense of the differences and inconsistencies between grading systems, so take note that converting from one grading system to another might not always be acurate. 
> You can take a look at [this]() writup on how gradr handles this. Feel free to offer any advice or help in this regard!

## Features

* Pre-Built common grading systems
  * [x] V-Scale
  * [x] Font
  * [ ] French
  * [ ] YDS
  * [ ] South africa
  * [ ] Brazil
  * [ ] UK
  * [ ] IRCRA
  * [ ] UIAA
  * ...
* [ ] Pre-Built calculators
* [ ] Easy conversion between grading systems
* [ ] Grading system detector
* [ ] Convert to all systems

## Getting started

To install the package check the install [guide](https://pub.dev/packages/gradr_lib/install)

## Usage

Here is an example on how to convert from V-Scale to Font scale and viceversa:

```dart
final vToFont = GradeCalculator(
    systemA: vScale,
    systemB: fontScale,
);

// Convert from grading system A (vScale) to system B (fontScale)
vToFont.atob(
    vScale.findByName('V3')
);

// > 6B

// Convert from grading system B (fontScale) to system A (vScale)
vToFont.btoa(
    fontScale.findByName('6B')
);
// > V3
```

## Need Gradr for another platform?

You might be in luck, at gradr we're trying to offer the libraries for most common languages and frameworks. Take a look and see if the one you need is already done. Otherwise file an issue and we will try to implement it (help is also appreciated if you have the time and want to :heart:). 
* [x] Dart
* [ ] JavaScript
  * [ ] React
  * [ ] Angular
  * [ ] Ionic
  * [ ] Vue
* [ ] Java
* [ ] PHP


## Additional info

There are some examples [here](https://github.com/nombrekeff/gradr_lib/tree/main/example) and [here](https://github.com/nombrekeff/gradr_lib/tree/main/test).

If you encounter any problems or fancy a feature to be added please head over to the GitHub [repository](https://github.com/nombrekeff/gradr_lib/) and [drop an issue](https://github.com/nombrekeff/gradr_lib/issues/new).

## Support the project

I tend to open source anything I can, and love to help people that might need help with the project. 

If you are using this project and are happy with it or just want to encourage me to continue creating stuff, there are few ways you can do so:

- Starring and sharing the project 🚀
- Reporting bugs 🐛
- Sending feedback
- Or even coding :P

Thanks! ❤️
