


import 'package:flutter/material.dart';
import 'package:netclipxsample/presentations/core/widgets/icon_text_button.dart';

class FastLaughsActionWidgest extends StatelessWidget {
  final IconData actionIcon;
  final String actionTitle;
  const FastLaughsActionWidgest(
      {super.key, required this.actionIcon, required this.actionTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        margin: const EdgeInsets.only(right: 8, bottom: 3, top: 3),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconTextButton(
              icon: actionIcon,
              title: actionTitle,
              onTap: () {},
            ),
            // Icon(
            //   actionIcon,
            //   color: clrWhite,
            // ),
            // Text(actionTitle, style: textMedium()),
          ],
        ),
      ),
    );
  }
}