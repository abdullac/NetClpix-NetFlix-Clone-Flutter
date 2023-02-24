import 'package:flutter/material.dart';
import 'package:netclipxsample/presentations/core/functions/styles.dart';
import 'package:netclipxsample/presentations/core/widgets/app_bar.dart';
import 'package:netclipxsample/presentations/scrn_home/home_direction_style_diminsion.dart/home_dimonsions.dart';

PreferredSize homeAppBarWidget() {
  return appBarWidget(
    isOpacity: true,
    title: Image.asset(
      "assets/NetClipxLogo.png",
      width: 30,
      height: 30,
    ),
    secondaryIcon: Icons.folder_open,
    bottomAppBar: SizedBox(
      height: homeAppBarHeight(),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        /// Bottom AppBar Buttons
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
