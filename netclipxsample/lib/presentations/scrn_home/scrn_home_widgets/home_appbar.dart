

import 'package:flutter/material.dart';
import 'package:netclipxsample/core/functions/styles.dart';
import 'package:netclipxsample/core/variables/dimonsions.dart';
import 'package:netclipxsample/core/variables/images.dart';
import 'package:netclipxsample/core/widgets/app_bar.dart';

  PreferredSize homeAppBarWidget() {
    return appBarWidget(
      isOpacity: true,
      title: Image.network(
        netclipxsampleImage,
        width: 30,
        height: 30,
      ),
      secondaryIcon: Icons.folder_open,
      bottomAppBar: SizedBox(
        height: screenHeight*4.8/100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BottomAppBarButtons(title: "Tv Shows", onPressed: () {}),
            BottomAppBarButtons(title: "Movies", onPressed: () {}),
            BottomAppBarButtons(title: "Category", onPressed: () {}),
          ],
        ),
      ),
    );
  }


class BottomAppBarButtons extends StatelessWidget {
  final String title;
  final void Function() onPressed;
  const BottomAppBarButtons({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: textMedium(),
      ),
    );
  }
}