

import 'package:flutter/material.dart';
import 'package:netclipxsample/presentations/core/functions/dimonsions.dart';
import 'package:netclipxsample/presentations/core/functions/styles.dart';
import 'package:netclipxsample/presentations/core/variables/dimonsions.dart';
import 'package:netclipxsample/presentations/core/variables/strings.dart';
import 'package:netclipxsample/presentations/scrn_downloads/downloads_dimonsions/downloads_dimonsions.dart';

class TextWidgetArea extends StatelessWidget {
  const TextWidgetArea({super.key});

  @override
  Widget build(BuildContext context) {
    var textWidgetsList = [
      Text(
        mainTextString,
        style: textLarge(),
        textAlign: TextAlign.center,
      ),
      Text(
        subTextString,
        style: textSmall(),
        textAlign: TextAlign.center,
      ),
    ];
    return SizedBox(
      width: textAreaWidth,
      height: textAreaHeight,
      child: bigDimonsion == BigDimonsion.same
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: textWidgetsList,
            )
          : Column(
              mainAxisAlignment: bigDimonsion == BigDimonsion.width
                  ? MainAxisAlignment.start
                  : MainAxisAlignment.center,
              children: textWidgetsList,
            ),
    );
  }
}

