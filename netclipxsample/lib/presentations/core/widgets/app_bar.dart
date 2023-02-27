import 'package:flutter/material.dart';
import 'package:netclipxsample/presentations/core/functions/dimonsions.dart';
import 'package:netclipxsample/presentations/core/functions/styles.dart';

ValueNotifier<bool> appBarShowNotifier = ValueNotifier(true);

PreferredSize appBarWidget({
  required Widget title,
  IconData? secondaryIcon,
  bool? isOpacity,
  required Widget bottomAppBar,
}) {
  double appBarHeight() => screenDimonsion(screenHeight() * 13.1 / 100,
      screenHeight() * 16.5 / 100, screenHeight() * 19.35 / 100);

  double bottomAppBarHeight() => screenDimonsion(screenHeight() * 6 / 100,
      screenHeight() * 10 / 100, screenHeight() * 5.5 / 100);
  return PreferredSize(
    preferredSize: Size.fromHeight(appBarHeight()),
    child: ValueListenableBuilder(
      valueListenable: appBarShowNotifier,
      builder: (BuildContext context, newValue, Widget? _) {
        return AnimatedContainer(
          transform:
              Matrix4.translationValues(0, newValue == true ? 0 : -155, 0),
          duration: const Duration(milliseconds: 500),
          child: AppBar(
            backgroundColor:
                Colors.black.withOpacity(isOpacity == true ? 0.3 : 1),
            title: title,
            titleSpacing: 8,
            titleTextStyle: textLarge(),
            actions: [
              ///  appBar right side permenant button
              IconButton(
                padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                iconSize: screenHeight() * 4.6 / 100,
                onPressed: () {},
                icon: const Icon(Icons.cast),
              ),

              ///  appBar right side secondary button
              secondaryIcon != null
                  ? Row(
                      children: [
                        IconButton(
                          padding: const EdgeInsets.symmetric(
                              vertical: 0, horizontal: 0),
                          iconSize: screenHeight() * 4.7 / 100,
                          onPressed: () {},
                          icon: Icon(secondaryIcon),
                        ),
                        const SizedBox(width: 4),
                      ],
                    )
                  : const SizedBox(),
            ],

            /// bottom appBar
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(bottomAppBarHeight()),
              child: bottomAppBar,
            ),
          ),
        );
      },
    ),
  );
}
