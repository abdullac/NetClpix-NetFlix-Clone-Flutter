import 'package:flutter/material.dart';
import 'package:netclipxsample/presentations/core/functions/dimonsions.dart';

TextStyle? textLarge() {
  double fontSize = screenDimonsion(screenWidth() * 6.5 / 100,
      screenHeight() * 5.2 / 100, screenWidth() * 3.5 / 100);
  return TextStyle(
      color: Colors.white, fontSize: fontSize, fontWeight: FontWeight.w500);
}

TextStyle? textMedium() {
  double fontSize = screenDimonsion(screenWidth() * 4.5 / 100,
      screenHeight() * 4.5 / 100, screenWidth() * 2.5 / 100);
  return TextStyle(
      color: const Color.fromARGB(255, 231, 231, 231),
      fontSize: fontSize,
      fontWeight: FontWeight.w400);
}

TextStyle? textSmall() {
  double fontSize = screenDimonsion(screenWidth() * 4 / 100,
      screenHeight() * 3.3 / 100, screenWidth() * 2 / 100);
  return TextStyle(
      color: Colors.white70, fontSize: fontSize, fontWeight: FontWeight.w200);
}
