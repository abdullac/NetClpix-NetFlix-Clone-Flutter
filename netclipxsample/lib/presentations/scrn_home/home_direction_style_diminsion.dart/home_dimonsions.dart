import 'package:netclipxsample/presentations/core/functions/dimonsions.dart';

homeAppBarHeight() => screenDimonsion(
      screenHeight() * 4.8 / 100,
      screenHeight() * 10.5 / 100,
      screenHeight() * 4.8 / 100,
    );

double mainImageHeight() {
  return screenDimonsion(
    screenHeight() * 80 / 100,
    screenHeight() * 83 / 100,
    screenHeight() * 83 / 100,
  );
}

double mainImageWidth() {
  return screenDimonsion(
    screenWidth(),
    screenHeight() * 75 / 100,
    screenWidth() * 60 / 100,
  );
}

categoryListviewWidth() => screenDimonsion(
      (screenWidth()),
      (screenWidth() - screenHeight() * 76 / 100),
      (screenWidth() * 39.8 / 100),
    );
