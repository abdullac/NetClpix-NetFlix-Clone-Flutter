import 'package:flutter/material.dart';
import 'package:netclipxsample/core/functions/dimonsions.dart';
import 'package:netclipxsample/core/functions/styles.dart';
import 'package:netclipxsample/core/widgets/icon_text_button.dart';
import 'package:netclipxsample/presentations/scrn_new_and_hot/new_hot_additional/new_hot_dimonsions.dart';
import 'package:netclipxsample/presentations/scrn_new_and_hot/new_hot_additional/new_hot_styles_directions.dart';
import 'package:netclipxsample/presentations/scrn_new_and_hot/new_hot_widgets/description_area.dart';
import 'package:netclipxsample/presentations/scrn_new_and_hot/new_hot_widgets/image_container.dart';
import 'package:netclipxsample/presentations/scrn_new_and_hot/new_hot_widgets/title_and_actions.dart';

class CommingSoonWidget extends StatelessWidget {
  const CommingSoonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      scrollDirection: comingsoonParentListViewDirection,
      itemBuilder: (BuildContext context, int index) {
        var comingsoonColumn = Column(
          children: const [
            ImageContainer(),
            ComingsoonDetailsArea(),
          ],
        );
        var comingsoonRow = Row(
          children: const [
            ImageContainer(),
            SizedBox(width: 5),
            ComingsoonDetailsArea(),
          ],
        );
        var imageAndDetailsWidgets =
            screenDimonsion(comingsoonColumn, comingsoonRow, comingsoonColumn);
        return SizedBox(
          width: comingsoonParentListviewWidth,
          child: Row(
            crossAxisAlignment: comingsoonRowCrossAxis,
            mainAxisAlignment: comingsoonRowMainAxis,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: SizedBox(
                  width: dateSpaceWidth,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Jun",
                        style: textMedium(),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "12",
                        style: textLarge(),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: comingsoonImageAndDetailsWidth,
                height: comingsoonImageAndDetailsHieght,
                child: imageAndDetailsWidgets,
              ),
            ],
          ),
        );
      },
    );
  }
}

class ComingsoonDetailsArea extends StatelessWidget {
  const ComingsoonDetailsArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final iconTextButtonsList = [
    IconTextButton(icon: Icons.notifications, title: "Remind me", onTap: () {print("remind me");}),
    IconTextButton(icon: Icons.info_rounded, title: "Info", onTap: () {print("info");}),
  ];
    return SizedBox(
      width: detailsAreaWidth,
      // height: screenDimonsion(null, null, null),
      child: Column(
        children: [
          TitleAndActions(
            title:
                "Eloaded 1 of 732 librarariesReloaded 1 of 732 libraries in 280ms in ",
            iconTextButtonList: iconTextButtonsList,
            // actionsCount: 2,
            // buttonIconList: [Icons.notifications, Icons.info_rounded],
            // buttonTitleList: ["Remind me", "Info"],
          ),
          const DescriptionsArea(
              comingOnDate:
                  "Eloaded 1 of 732 librarariesReloaded 1 of 732 libraries in 280ms in "),
        ],
      ),
    );
  }
}








//  SizedBox(
//                 width: comingsoonSubListviewWidth,
//                 height: subListviewHeight,
//                 child: ListView(
//                   scrollDirection: comingsoonSubListviwDirection,
//                   shrinkWrap: true,
//                   children: const [
//                     ImageContainer(),
//                     SizedBox(width: 5),
//                     ComingsoonDetailsArea(),
//                   ],
//                 ),
//               ),