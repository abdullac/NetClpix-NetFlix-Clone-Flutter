import 'package:netclipxsample/presentations/core/functions/dimonsions.dart';

import '../../core/variables/dimonsions.dart';

homeAppBarHeight() => screenDimonsion(screenHeight() * 4.8 / 100,
    screenHeight() * 10.5 / 100, screenHeight() * 4.8 / 100);

double mainImageHeight() {
  return screenDimonsion(screenHeight() * 80 / 100, screenHeight() * 83 / 100,
      screenHeight() * 83 / 100);
}

double mainImageWidth() {
  return screenDimonsion(
      screenWidth(), screenHeight() * 75 / 100, screenHeight() * 75 / 100);
}

var categoryListviewWidth =
    screenDimonsion(screenWidth(), screenWidth(), screenHeight() * 75 / 100);
