import 'package:flutter/material.dart';
import 'package:netclipxsample/core/functions/dimonsions.dart';
import 'package:netclipxsample/core/functions/styles.dart';
import 'package:netclipxsample/core/variables/dimonsions.dart';

PreferredSize appBarWidget({
  required Widget title,
  IconData? secondaryIcon,
  bool? isOpacity,
  required Widget bottomAppBar,
}) {
  var appBarHeight = screenDimonsion(screenHeight * 9 / 100,
      screenHeight * 15 / 100, screenHeight * 10.1 / 100);

  var bottomAppBarHeight = screenDimonsion(screenHeight * 6 / 100,
      screenHeight * 10 / 100, screenHeight * 5.5 / 100);

  return PreferredSize(
      preferredSize: Size.fromHeight(appBarHeight),
      child: AppBar(
        backgroundColor: Colors.black.withOpacity(isOpacity == true ? 0.3 : 1),
        title: title,
        titleSpacing: 8,
        titleTextStyle: textLarge(),
        actions: [
          IconButton(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            iconSize: screenHeight * 4.6 / 100,
            onPressed: () {},
            icon: const Icon(Icons.cast),
          ),
          secondaryIcon != null
              ? Row(
                  children: [
                    IconButton(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 0),
                      iconSize: screenHeight * 4.7 / 100,
                      onPressed: () {},
                      icon: Icon(secondaryIcon),
                    ),
                    const SizedBox(width: 4),
                  ],
                )
              : const SizedBox(),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(bottomAppBarHeight),
          child: bottomAppBar,
        ),
      ));
}
