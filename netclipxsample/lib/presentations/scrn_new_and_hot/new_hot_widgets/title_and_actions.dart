import 'package:flutter/material.dart';
import 'package:netclipxsample/presentations/core/functions/styles.dart';
import 'package:netclipxsample/presentations/core/widgets/icon_text_button.dart';
import 'package:netclipxsample/presentations/scrn_new_and_hot/new_hot_additional/new_hot_dimonsions.dart';

class TitleAndActions extends StatelessWidget {
  final String? title;
  final List<IconTextButton> iconTextButtonList;
  const TitleAndActions({
    super.key,
    this.title,
    required this.iconTextButtonList,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            title ?? "",
            overflow: TextOverflow.ellipsis,
            style: textLarge()?.copyWith(letterSpacing: -1.5),
          ),
        ),
        SizedBox(
          height: iconTextButtonAreaHeight(),
          /// ListView for making number of Buttons
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: iconTextButtonList.length,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  const SizedBox(width: 5),
                  /// icon text Button
                  iconTextButtonList[index],
                ],
              );
            },
          ),
        ),
        const SizedBox(
          width: 5,
        )
      ],
    );
  }
}
