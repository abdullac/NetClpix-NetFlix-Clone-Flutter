import 'package:flutter/material.dart';
import 'package:netclipxsample/core/functions/dimonsions.dart';
import 'package:netclipxsample/core/functions/styles.dart';
import 'package:netclipxsample/core/variables/dimonsions.dart';

PreferredSize AppBarWidget(String title, Widget bottomAppBar,BuildContext ctx) {
  return PreferredSize(
      // preferredSize: Size.fromHeight(screenSmallDimonsion*11.2/100),
      preferredSize: Size.fromHeight(screenDimonsion(screenHeight*9/100, screenHeight*15/100, screenHeight*7.5/100)),
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
          preferredSize: Size.fromHeight(screenDimonsion(screenHeight*6/100, screenHeight*10/100, screenHeight*5.5/100)),
          child: bottomAppBar,
        ),
      ));
}
