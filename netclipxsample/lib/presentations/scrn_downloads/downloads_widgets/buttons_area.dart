import 'package:flutter/material.dart';
import 'package:netclipxsample/presentations/core/functions/dimonsions.dart';
import 'package:netclipxsample/presentations/core/variables/colors.dart';
import 'package:netclipxsample/presentations/core/variables/dimonsions.dart';
import 'package:netclipxsample/presentations/core/widgets/button_widget.dart';
import 'package:netclipxsample/presentations/scrn_downloads/downloads_dimonsions/downloads_dimonsions.dart';

class ButtonsArea extends StatelessWidget {
  const ButtonsArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var buttonWidgets = <Widget>[
      ButtonWidget(
        padding: 8,
        buttonColor: clrBlue ?? clrBlueN,
        buttonTextColor: clrWhite,
        buttonText: "Set Up",
        buttonHeight: downloadsButtonHeight,
        buttonWidth: downloadsButtonWidth,
      ),
      height0,
      width0,
      ButtonWidget(
        padding: 12,
        buttonColor: clrWhite,
        buttonTextColor: clrBlack,
        buttonText: "See what you can download",
        buttonHeight: downloadsButtonHeight,
        buttonWidth: downloadsButtonWidth,
      ),
    ];
    return Positioned(
      bottom: 55,
      right: screenDimonsion(0.0, screenWidth() * 1 / 2, 0.0),
      left: 0,
      child: bigDimonsion == BigDimonsion.same
          ? SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: buttonWidgets,
              ),
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: buttonWidgets,
            ),
    );
  }
}
