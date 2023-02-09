import 'package:flutter/material.dart';
import 'package:netclipxsample/core/functions/styles.dart';
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
          Icon(
            Icons.settings,
            size: bottomAppBarIconSize,
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            "Smart Download",
            style: textMedium(),
          ),
        ],
      ),
    );
  }
}
