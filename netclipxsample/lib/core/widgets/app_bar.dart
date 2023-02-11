import 'package:flutter/material.dart';
import 'package:netclipxsample/core/functions/dimonsions.dart';
import 'package:netclipxsample/core/functions/styles.dart';
import 'package:netclipxsample/core/variables/dimonsions.dart';

PreferredSize appBarWidget({
  required Widget title,
  IconData? secondaryIcon,
  required Widget bottomAppBar,
}) {
  var appBarHeight = screenDimonsion(screenHeight * 9 / 100,
      screenHeight * 15 / 100, screenHeight * 10.1 / 100);

  var bottomAppBarHeight = screenDimonsion(screenHeight * 6 / 100,
      screenHeight * 10 / 100, screenHeight * 5.5 / 100);

  return PreferredSize(
      preferredSize: Size.fromHeight(appBarHeight),
      child: AppBar(
        title: title,
        titleSpacing: 8,
        titleTextStyle: textLarge(),
        actions: [
          const Icon(
            Icons.cast,
          ),
          const SizedBox(width: 4),
          secondaryIcon != null ?
              Row(
                children: [
                  Icon(secondaryIcon),
                  SizedBox(width: 4),
                ],
              ) : SizedBox(),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(bottomAppBarHeight),
          child: bottomAppBar,
        ),
      ));
}
