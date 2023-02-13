import 'package:flutter/material.dart';
import 'package:netclipxsample/core/functions/dimonsions.dart';
import 'package:netclipxsample/core/functions/styles.dart';
import 'package:netclipxsample/core/variables/dimonsions.dart';
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
      scrollDirection: screenDimonsion(Axis.vertical, Axis.vertical, Axis.horizontal),
      itemBuilder: (BuildContext context, int index) {
        return SizedBox(
          width: screenDimonsion(null, double.infinity, null),
          child: Row(
            crossAxisAlignment: screenDimonsion(CrossAxisAlignment.start, CrossAxisAlignment.start, CrossAxisAlignment.center),
            mainAxisAlignment: screenDimonsion(MainAxisAlignment.center, MainAxisAlignment.center, MainAxisAlignment.start),
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: SizedBox(
                  width: screenDimonsion(screenWidth*7.8/100, screenWidth*5.2/100, screenWidth*5/100),
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
                width: screenDimonsion(screenWidth*85/100, null, screenHeight*60/100),
                height: screenDimonsion(null, screenHeight*70/100, null),
                child: ListView(
                  scrollDirection: screenDimonsion(Axis.vertical, Axis.horizontal, Axis.vertical),
                  shrinkWrap: true,
                  children: const [
                    ImageContainer(),
                    SizedBox(width: 5),
                    ComingsoonDetailsArea(),
                  ],
                ),
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
    return SizedBox(
      width: screenDimonsion(null, screenWidth*24/100, null),
      // height: screenDimonsion(null, null, null),
      child: Column(
        children: const [
          TitleAndActions(
              title: "Eloaded 1 of 732 librarariesReloaded 1 of 732 libraries in 280ms in ",
              actionsCount: 2,
              buttonIconList: [Icons.notifications,Icons.info_rounded],
              buttonTitleList: ["Remind me","Info"]),
          DescriptionsArea(
              comingOnDate:
                  "Eloaded 1 of 732 librarariesReloaded 1 of 732 libraries in 280ms in "),
        ],
      ),
    );
  }
}
