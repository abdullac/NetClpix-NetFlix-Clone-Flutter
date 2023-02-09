import 'package:flutter/material.dart';
import 'package:netclipxsample/core/functions/dimonsions.dart';
import 'package:netclipxsample/core/variables/colors.dart';
import 'package:netclipxsample/core/variables/dimonsions.dart';

class ButtonsArea extends StatelessWidget {
  const ButtonsArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var buttonWidgets = [
      ButtonWidget(
        padding: 8,
        buttonColor: clrBlue ?? clrBlueN,
        buttonTextColor: clrWhite,
        buttonText: "Set Up",
      ),
      height0,
      width0,
      const ButtonWidget(
        padding: 12,
        buttonColor: clrWhite,
        buttonTextColor: clrBlack,
        buttonText: "See what you can download",
      ),
    ];
    return Positioned(
      bottom: 55,
      right: screenDimonsion(0.0, screenWidth * 1 / 2, 0.0),
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

class ButtonWidget extends StatelessWidget {
  final double padding;
  final Color buttonColor;
  final Color buttonTextColor;
  final String buttonText;
  const ButtonWidget({
    super.key,
    required this.padding,
    required this.buttonColor,
    required this.buttonTextColor,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: SizedBox(
        width: screenDimonsion(
            screenWidth, screenWidth * 1 / 2, screenWidth * 4 / 10),
        height: screenDimonsion(screenHeight*5.5/100, screenHeight*10/100, screenHeight*7/100),
        child: ElevatedButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(
                const EdgeInsets.all(0)),
            backgroundColor: MaterialStateProperty.all(buttonColor),
            foregroundColor: MaterialStateProperty.all(buttonTextColor),
          ),
          onPressed: () {
            //
          },
          child: Text(buttonText,textAlign: TextAlign.center,),
        ),
      ),
    );
  }
}
