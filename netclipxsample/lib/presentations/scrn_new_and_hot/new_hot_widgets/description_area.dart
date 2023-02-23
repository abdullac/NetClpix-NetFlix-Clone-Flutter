import 'package:flutter/material.dart';
import 'package:netclipxsample/presentations/core/functions/dimonsions.dart';
import 'package:netclipxsample/presentations/core/functions/styles.dart';
import 'package:netclipxsample/presentations/core/variables/colors.dart';
import 'package:netclipxsample/presentations/core/variables/dimonsions.dart';

class DescriptionsArea extends StatelessWidget {
  final String? comingOnDate;
  final String descriptionTitle;
  final String description;
  final bool centerDescriptionTitle;
  const DescriptionsArea({
    this.comingOnDate,
    super.key,
    this.centerDescriptionTitle = false,
    required this.descriptionTitle,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        comingOnDate != null
            ? descriptionText(comingOnDate??"sample descrption*")
            : const SizedBox(),
        descriptionText(
          descriptionTitle,
          style: textMedium(),
          centerDescription: centerDescriptionTitle,
        ),
        descriptionText(
          description,
          style: textSmall(),
          isOneLine: false,
        ),
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
