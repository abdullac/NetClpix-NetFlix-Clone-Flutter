import 'package:netclipxsample/presentations/core/functions/dimonsions.dart';

double unSelectedFontSize() => screenDimonsion(
      screenWidth() * 3 / 100,
      screenHeight() * 2.5 / 100,
      screenHeight() * 2 / 100,
    );

double bottomNavigationBarWidth() => screenDimonsion(
      screenWidth(),
      screenWidth() * 1 / 2,
      screenWidth(),
    );

double iconSize() => screenDimonsion(
      screenWidth() * 5 / 100,
      screenHeight() * 6 / 100,
      screenHeight() * 2.5 / 100,
    );
