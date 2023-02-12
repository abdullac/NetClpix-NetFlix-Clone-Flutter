import 'package:flutter/material.dart';
import 'package:netclipxsample/core/functions/styles.dart';
import 'package:netclipxsample/core/widgets/round_icon_text_button.dart';
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
      itemBuilder: (BuildContext context, int index) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 50,
              height: 50,
              child: Column(
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
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: const [
                  ImageContainer(),
                  ComingsoonDetailsArea(),
                ],
              ),
            )
          ],
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
    return Column(
      children: const [
        TitleAndActions(
            actionsCount: 2,
            buttonIconList: [Icons.notifications,Icons.info_rounded],
            buttonTitleList: ["Remind me","Info"]),
        DescriptionsArea(
            comingOnDate:
                "Eloaded 1 of 732 librarariesReloaded 1 of 732 libraries in 280ms in "),
      ],
    );
  }
}
