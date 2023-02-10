import 'package:flutter/material.dart';
import 'package:netclipxsample/core/functions/dimonsions.dart';
import 'package:netclipxsample/core/functions/styles.dart';
import 'package:netclipxsample/core/variables/dimonsions.dart';

PreferredSize appBarWidget(String title, Widget bottomAppBar) {
  var appBarHeight = screenDimonsion(screenHeight * 9 / 100,
      screenHeight * 15 / 100, screenHeight * 10.1 / 100);

  var bottomAppBarHeight = screenDimonsion(screenHeight * 6 / 100,
      screenHeight * 10 / 100, screenHeight * 5.5 / 100);

  return PreferredSize(
      preferredSize: Size.fromHeight(appBarHeight),
      child: AppBar(
        title: Text(title),
        titleSpacing: 8,
        titleTextStyle: textLarge(),
        actions: const [
          Icon(
            Icons.cast,
          ),
          SizedBox(width: 4),
          Icon(Icons.folder_open),
          SizedBox(
            width: 4,
          )
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(bottomAppBarHeight),
          child: bottomAppBar,
        ),
      ));
}
