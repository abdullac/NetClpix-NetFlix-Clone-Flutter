import 'package:flutter/material.dart';
import 'package:netclipxsample/presentations/scrn_main_page/scrn_main_page.dart';

enum BigDimonsion {
  height,
  width,
  same,
}

enum ScreenFueture { size, bigDimonsion }

Size findScreenSize(BuildContext context) {
  return MediaQuery.of(context).size;
}

Size screenSizeNotifierValue([BuildContext? ctx]) {
  if (ctx != null) {
    ScrnMainPage.screenSizeNotifier.value = findScreenSize(ctx);
    ScrnMainPage.screenSizeNotifier.notifyListeners();
    // print(ScrnMainPage.screenSizeNotifier.value);
    return ScrnMainPage.screenSizeNotifier.value;
  }
  return ScrnMainPage.screenSizeNotifier.value;
}

/// *** if you call screenHeight() without context passing in/for any widget(Build function),
/// *** first you must call screenSizeNotifierValue(context) in that widget/parentWidget before calling screenHeight().
double screenHeight() {
  return screenSizeNotifierValue().height;
}

/// *** if you call screenWidth() without context passing in/for any widget(Build function),
/// *** first you must call screenSizeNotifierValue(context) in that widget/parentWidget before calling screenWidth().
double screenWidth() {
  return screenSizeNotifierValue().width;
}

/// *** if you call findBigDimonsion() without context passing in/for any widget(Build function),
/// *** first you must call screenSizeNotifierValue(context) in that widget/parentWidget before calling findBigDimonsion().
BigDimonsion findBigDimonsion([BuildContext? ctx]) {
  double screenWidth;
  double screenHeight;
  if (ctx == null) {
    screenWidth = screenSizeNotifierValue().width;
    screenHeight = screenSizeNotifierValue().height;
  } else {
    screenWidth = findScreenSize(ctx).width;
    screenHeight = findScreenSize(ctx).height;
  }
  return screenWidth <= screenHeight * 2 / 3
      ? BigDimonsion.height
      : screenWidth * 2 / 3 < screenHeight
          ? BigDimonsion.same
          : BigDimonsion.width;
}

///  you can use 3 type screen responsive
/// *** if you call screenDimonsion() without context passing in/for any widget(Build function),
/// *** first you must call screenSizeNotifierValue(context) in that widget/parentWidget before calling screenDimonsion().
dynamic screenDimonsion(dynamic heightedDimension, dynamic widthedDimonsion,
    dynamic sameDimonsion) {
  if (findBigDimonsion() == BigDimonsion.height) {
    return heightedDimension;
  } else if (findBigDimonsion() == BigDimonsion.width) {
    return widthedDimonsion;
  } else {
    return sameDimonsion;
  }
}
