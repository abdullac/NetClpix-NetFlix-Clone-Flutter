import 'package:flutter/material.dart';
import 'package:netclipxsample/presentations/core/functions/dimonsions.dart';
late Size screenSize;
final double screenHeight = screenSize.height;
final double screenWidth = screenSize.width;
late BigDimonsion bigDimonsion;
double screenSmallDimonsion = screenWidth <= screenHeight ? screenWidth : screenHeight;

final height0 = SizedBox(height: screenHeight * 0.6 / 100);
final height1 = SizedBox(height: screenHeight * 1 / 100);
final height2 = SizedBox(height: screenHeight * 2 / 100);
final height11 = SizedBox(height: screenHeight * 22 / 100);

final width0 = SizedBox(width: screenWidth * 0.3 / 100);
 