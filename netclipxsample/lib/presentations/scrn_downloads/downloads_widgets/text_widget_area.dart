import 'package:flutter/material.dart';
import 'package:netclipxsample/presentations/core/functions/dimonsions.dart';
import 'package:netclipxsample/presentations/core/functions/styles.dart';
import 'package:netclipxsample/presentations/core/variables/strings.dart';
import 'package:netclipxsample/presentations/scrn_downloads/downloads_dimonsions/downloads_dimonsions.dart';

class TextWidgetArea extends StatelessWidget {
  const TextWidgetArea({super.key});

  @override
  Widget build(BuildContext context) {
    screenSizeNotifierValue(context);
    var textWidgetsList = [
      /// main text
      Text(
        mainTextString,
        style: textLarge(),
        textAlign: TextAlign.center,
      ),

      /// sub text
      Text(
        subTextString,
        style: textSmall(),
        textAlign: TextAlign.center,
      ),
    ];
    return SizedBox(
      width: textAreaWidth(),
      height: textAreaHeight(),
      child: findBigDimonsion() == BigDimonsion.same

          /// if sameDimonsion, shows Row View.
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: textWidgetsList,
            )

          /// if not sameDimonsion, shows Column View.
          : Column(
              mainAxisAlignment: findBigDimonsion() == BigDimonsion.width
                  ? MainAxisAlignment.start
                  : MainAxisAlignment.center,
              children: textWidgetsList,
            ),
    );
  }
}
