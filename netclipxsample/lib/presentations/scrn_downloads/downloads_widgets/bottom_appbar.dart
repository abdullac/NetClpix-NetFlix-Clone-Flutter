import 'package:flutter/material.dart';
import 'package:netclipxsample/presentations/core/functions/styles.dart';
import 'package:netclipxsample/presentations/core/variables/colors.dart';
import 'package:netclipxsample/presentations/scrn_downloads/downloads_dimonsions/downloads_dimonsions.dart';

class BottomAppBarWidget extends StatelessWidget {
  const BottomAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Row(
        children: [
          TextButton.icon(style: ButtonStyle(padding: MaterialStateProperty.all(const EdgeInsets.all(0))),
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              size: bottomAppBarIconSize(),
              color: clrWhite,
            ),
            label: Text(
              "Smart Download",
              style: textMedium(),
            ),
          )
        ],
      ),
    );
  }
}
