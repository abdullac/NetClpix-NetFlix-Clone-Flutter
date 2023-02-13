import 'package:flutter/material.dart';
import 'package:netclipxsample/core/functions/dimonsions.dart';
import 'package:netclipxsample/core/functions/styles.dart';
import 'package:netclipxsample/core/variables/colors.dart';
import 'package:netclipxsample/core/variables/dimonsions.dart';

class DescriptionsArea extends StatelessWidget {
  final String? comingOnDate;
  final bool centerDescriptionTitle;
  const DescriptionsArea({
    this.comingOnDate,
    super.key,
    this.centerDescriptionTitle = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        comingOnDate != null
            ? descriptionText(comingOnDate!)

            /// coming on date text
            : const SizedBox(),
        descriptionText(

            /// description title
            "Reloaded 1 of  7a",
            style: textMedium(),
            centerDescription: centerDescriptionTitle),
        descriptionText(

            /// description
            "Reloaded 1 of 732 librariesReloadeloaded 1 of 732 librariesReloaded 1 of 732 libraries in 2eloaded 1 of 732 librariesReloaded 1 of 732 libraries in 2ed 1eloaded 1 of 732 librariesReloaded 1 of 732 libraries in 2 of 732 libraries ieloaded 1 of 732 librariesReloaded 1 of 732 libraries in 2n 280ms in 280ms ",
            style: textSmall(),
            isOneLine: false),
        SizedBox(
          height: screenHeight * 4 / 100,
        ),
      ],
    );
  }

  Widget descriptionText(String text,
      {bool isOneLine = true,
      TextStyle? style,
      bool centerDescription = false}) {
    return SizedBox(
      width: null,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Text(
          text,
          textAlign:
              centerDescription == true ? TextAlign.center : TextAlign.left,
          maxLines: isOneLine == true ? 1 : screenDimonsion(6, 4, 2),
          overflow: TextOverflow.ellipsis,
          style: style ?? textSmall()?.copyWith(color: clrWhite),
        ),
      ),
    );
  }
}
