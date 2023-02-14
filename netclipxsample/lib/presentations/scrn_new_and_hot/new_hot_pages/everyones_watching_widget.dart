import 'package:flutter/material.dart';
import 'package:netclipxsample/core/functions/dimonsions.dart';
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
        const titleAndActions = TitleAndActions(
            actionsCount: 3,
            buttonIconList: [Icons.share, Icons.add, Icons.play_arrow],
            buttonTitleList: ["Share", "My List", "Play"]);
        var widgetsSections = <Widget>[
          ifImageContainer1,
          SizedBox(
            width: widgetsSectionsWidth,
            child: Column(
              children: [
                const DescriptionsArea(centerDescriptionTitle: true),
                ifImageContainer2,
                titleAndActions,
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