import 'package:flutter/material.dart';
import 'package:netclipxsample/presentations/scrn_new_and_hot/new_hot_widgets/description_area.dart';
import 'package:netclipxsample/presentations/scrn_new_and_hot/new_hot_widgets/image_container.dart';
import 'package:netclipxsample/presentations/scrn_new_and_hot/new_hot_widgets/title_and_actions.dart';

class EveryonesWatchingwidget extends StatelessWidget {
  const EveryonesWatchingwidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (BuildContext ctx, int index) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: const [
            DescriptionsArea(centerDescriptionTitle: true),
            ImageContainer(),
            TitleAndActions(
                actionsCount: 3,
                buttonIconList: [Icons.share,Icons.add,Icons.play_arrow],
                buttonTitleList: ["Share","My List","Play"]),
          ],
        ),
      );
    });
  }
}
