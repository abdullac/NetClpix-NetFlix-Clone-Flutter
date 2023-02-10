import 'package:flutter/material.dart';
import 'package:netclipxsample/core/functions/styles.dart';

class ButtonWidget extends StatelessWidget {
  final double buttonWidth;
  final double buttonHeight;
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
    required this.buttonWidth,
    required this.buttonHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: SizedBox(
        width: buttonWidth,
        height: buttonHeight,
        child: ElevatedButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
            backgroundColor: MaterialStateProperty.all(buttonColor),
            foregroundColor: MaterialStateProperty.all(buttonTextColor),
          ),
          onPressed: () {
            //
          },
          child: Text(
            buttonText,
            textAlign: TextAlign.center,
            style: textMedium()?.copyWith(color: buttonTextColor,fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
