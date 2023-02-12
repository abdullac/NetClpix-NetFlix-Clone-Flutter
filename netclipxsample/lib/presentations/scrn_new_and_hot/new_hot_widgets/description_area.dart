import 'package:flutter/material.dart';
import 'package:netclipxsample/core/functions/styles.dart';
import 'package:netclipxsample/core/variables/colors.dart';

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
            : const SizedBox(),
        descriptionText(
            "Reloaded 1 of  7a",
            style: textMedium(),
            centerDescription: centerDescriptionTitle),
        descriptionText(
            "Reloaded 1 of 732 librariesReloadeloaded 1 of 732 librariesReloaded 1 of 732 libraries in 2eloaded 1 of 732 librariesReloaded 1 of 732 libraries in 2ed 1eloaded 1 of 732 librariesReloaded 1 of 732 libraries in 2 of 732 libraries ieloaded 1 of 732 librariesReloaded 1 of 732 libraries in 2n 280ms in 280ms ",
            style: textSmall(),
            isOneLine: false),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }

  Widget descriptionText(String text,
      {bool isOneLine = true,
      TextStyle? style,
      bool centerDescription = false}) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Text(
          text,
          textAlign:
              centerDescription == true ? TextAlign.center : TextAlign.left,
          maxLines: isOneLine == true ? 1 : 5,
          overflow: TextOverflow.ellipsis,
          style: style ?? textSmall()?.copyWith(color: clrWhite),
        ),
      ),
    );
  }
}
