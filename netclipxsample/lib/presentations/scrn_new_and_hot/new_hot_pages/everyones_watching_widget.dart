import 'package:flutter/material.dart';
import 'package:netclipxsample/presentations/core/functions/dimonsions.dart';
import 'package:netclipxsample/presentations/core/widgets/icon_text_button.dart';
import 'package:netclipxsample/presentations/scrn_new_and_hot/new_hot_additional/new_hot_dimonsions.dart';
import 'package:netclipxsample/presentations/scrn_new_and_hot/new_hot_additional/new_hot_styles_directions.dart';
import 'package:netclipxsample/presentations/scrn_new_and_hot/new_hot_widgets/description_area.dart';
import 'package:netclipxsample/presentations/scrn_new_and_hot/new_hot_widgets/title_and_actions.dart';

class EveryonesWatchingwidget extends StatelessWidget {
  const EveryonesWatchingwidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      shrinkWrap: true,
      scrollDirection:
          screenDimonsion(Axis.vertical, Axis.vertical, Axis.horizontal),
      itemBuilder: (BuildContext ctx, int index) {
        final iconTextButtonsList = [
          IconTextButton(icon: Icons.share, title: "Share", onTap: () {}),
          IconTextButton(icon: Icons.add, title: "My List", onTap: () {}),
          IconTextButton(icon: Icons.play_arrow, title: "Play", onTap: () {}),
        ];
        //  titleAndActions = TitleAndActions(iconTextButtonList: iconTextButtonsList);
        // TitleAndActions(
        //     actionsCount: 3,
        //     buttonIconList: [Icons.share, Icons.add, Icons.play_arrow],
        //     buttonTitleList: ["Share", "My List", "Play"]);
        var widgetsSections = <Widget>[
          ifImageContainer1,
          SizedBox(
            width: widgetsSectionsWidth,
            child: Column(
              children: [
                const DescriptionsArea(centerDescriptionTitle: true),
                ifImageContainer2,
                // titleAndActions,
                TitleAndActions(iconTextButtonList: iconTextButtonsList),
              ],
            ),
          ),
        ];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: everyoneWatchingParentListWidth,
            height: everyoneWatchingParentListHieght,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: widgetsSections,
            ),
          ),
        );
      },
    );
  }
}
