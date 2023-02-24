import 'package:flutter/material.dart';
import 'package:netclipxsample/presentations/core/functions/dimonsions.dart';
import 'package:netclipxsample/presentations/scrn_main_page/scrn_main_page.dart';
// late Size screenSize;
 Size screenSize = ScrnMainPage.screenSizeNotifier.value;
//  double screenHeight = ScrnMainPage.screenSizeNotifier.value.height;
//  double screenWidth = ScrnMainPage.screenSizeNotifier.value.width;

double screenHeight(){
  return screenSize.height;
}

double screenWidth(){
  return screenSize.width;
}


 BigDimonsion bigDimonsion = BigDimonsion.height;
double screenSmallDimonsion = screenWidth() <= screenHeight() ? screenWidth() : screenHeight();

var height0 = SizedBox(height: screenHeight() * 0.6 / 100);
var height1 = SizedBox(height: screenHeight() * 1 / 100);
var height2 = SizedBox(height: screenHeight() * 2 / 100);
var height11 = SizedBox(height: screenHeight() * 22 / 100);

var width0 = SizedBox(width: screenWidth() * 0.3 / 100);
 