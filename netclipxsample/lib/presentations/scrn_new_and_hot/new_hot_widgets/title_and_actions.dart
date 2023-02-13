import 'package:flutter/material.dart';
import 'package:netclipxsample/core/functions/dimonsions.dart';
import 'package:netclipxsample/core/functions/styles.dart';
import 'package:netclipxsample/core/variables/dimonsions.dart';
import 'package:netclipxsample/core/widgets/round_icon_text_button.dart';

class TitleAndActions extends StatelessWidget {
  final String? title;
  final int actionsCount;
  final List<IconData> buttonIconList;
  final List<String> buttonTitleList;
  const TitleAndActions({
    super.key,
    this.title,
    required this.actionsCount,
    required this.buttonIconList,
    required this.buttonTitleList,
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
          height: screenDimonsion(screenWidth*12/100, screenHeight*14/100,screenWidth*7.5/100),
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: actionsCount,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  const SizedBox(width: 5),
                  roundIconTextButtonItering(actionsCount,buttonIconList,buttonTitleList)[index],
                ],
              );
            },
          ),
        ),
        const SizedBox(width: 5,)
      ],
    );
  }

  List<Widget> roundIconTextButtonItering(int count,List<IconData> iconList,List<String> titleList) {
    List<Widget> widgetList = [];
    for (int index = 0; index < count; index++) {
      widgetList.add(
        RoundIconTextButton(
          icon: iconList[index],
          title: titleList[index],
          // size: const Size(60, 40),
          onTap: () {},
        ),
      );
    }
    return widgetList;
  }
}
