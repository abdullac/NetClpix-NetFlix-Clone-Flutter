import 'package:netclipxsample/presentations/core/functions/dimonsions.dart';
import 'package:netclipxsample/presentations/scrn_downloads/downloads_widgets/image_container_widget.dart';

import '../../core/variables/dimonsions.dart';

double textAreaWidth() =>
    screenDimonsion(screenWidth(), screenWidth() * 1 / 2, screenWidth());

double textAreaHeight() => screenDimonsion(
    screenHeight() * 25 / 100, screenHeight(), screenHeight() * 15 / 100);

double imageBaseContainerHeight() => screenDimonsion(
    screenHeight() * 42 / 100, screenHeight() * 100 / 100, screenHeight() * 55 / 100);

double imageBaseContainerWidth() => screenDimonsion(
    screenWidth() * 65 / 100, screenWidth() * 50 / 100, screenHeight() * 55 / 100);

double imageChildContainerHeight() => screenDimonsion(
    screenWidth() * 100 / 100, screenHeight() * 90 / 100, screenHeight() * 55 / 100);

double imageChildContainerWidth() => screenDimonsion(
    screenWidth() * 100 / 100, screenHeight() * 90 / 100, screenHeight() * 55 / 100);

double bottomAppBarIconSize() => screenDimonsion(
    screenWidth() * 7 / 100, screenHeight() * 5 / 100, screenHeight() * 4 / 100);

double downloadsButtonWidth() =>
    screenDimonsion(screenWidth(), screenWidth() * 1 / 2, screenWidth() * 38 / 100);

double downloadsButtonHeight() => screenDimonsion(
    screenHeight() * 5.5 / 100, screenHeight() * 10 / 100, screenHeight() * 7 / 100);

imageContainerWidth(imagePosition) {
  return imagePosition == ImagePosition.center
      ? screenDimonsion(screenWidth() * 38 / 100, screenHeight() * 30 / 100,
          screenWidth() * 19 / 100)
      : screenDimonsion(screenWidth() * 38 / 100, screenHeight() * 30 / 100,
          screenWidth() * 19 / 100);
}

imageContainerHeight(imagePosition) {
  return imagePosition == ImagePosition.center
      ? screenDimonsion(screenWidth() * 62 / 100, screenHeight() * 50 / 100,
          screenWidth() * 30 / 100)
      : screenDimonsion(screenWidth() * 54 / 100, screenHeight() * 43 / 100,
          screenWidth() * 25 / 100);
}
