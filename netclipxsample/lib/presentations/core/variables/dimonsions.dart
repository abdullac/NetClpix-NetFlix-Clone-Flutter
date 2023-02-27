import 'package:flutter/material.dart';
import 'package:netclipxsample/presentations/core/functions/dimonsions.dart';

double screenSmallDimonsion =
    screenWidth() <= screenHeight() ? screenWidth() : screenHeight();

var height0 = SizedBox(height: screenHeight() * 0.6 / 100);
var height1 = SizedBox(height: screenHeight() * 1 / 100);
var height2 = SizedBox(height: screenHeight() * 2 / 100);
var height22 = SizedBox(height: screenHeight() * 22 / 100);

var width0 = SizedBox(width: screenWidth() * 0.3 / 100);
