import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netclipxsample/applications/hotandnew/hot_and_new_bloc.dart';
import 'package:netclipxsample/presentations/core/functions/dimonsions.dart';
import 'package:netclipxsample/presentations/core/widgets/icon_text_button.dart';
import 'package:netclipxsample/presentations/scrn_new_and_hot/new_hot_additional/new_hot_dimonsions.dart';
import 'package:netclipxsample/presentations/scrn_new_and_hot/new_hot_additional/new_hot_styles_directions.dart';
import 'package:netclipxsample/presentations/scrn_new_and_hot/new_hot_widgets/description_area.dart';
import 'package:netclipxsample/presentations/scrn_new_and_hot/new_hot_widgets/image_container.dart';
import 'package:netclipxsample/presentations/scrn_new_and_hot/new_hot_widgets/title_and_actions.dart';

class EveryonesWatchingwidget extends StatelessWidget {
  const EveryonesWatchingwidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HotAndNewBloc>(context)
          .add(const HotAndNewEvent.getEveryOnesWatchingItems());
    });
    return BlocBuilder<HotAndNewBloc, HotAndNewState>(
        builder: (context, state) {
      return state.isLoading == true
          ? const Center(
              child: CircularProgressIndicator(strokeWidth: 2),
            )
          : ListView.builder(
              itemCount: state.hotAndNewModelList.length,
              shrinkWrap: true,
              scrollDirection: screenDimonsion(
                  Axis.vertical, Axis.vertical, Axis.horizontal),
              itemBuilder: (BuildContext ctx, int index) {
                final iconTextButtonsList = [
                  IconTextButton(
                      icon: Icons.share, title: "Share", onTap: () {}),
                  IconTextButton(
                      icon: Icons.add, title: "My List", onTap: () {}),
                  IconTextButton(
                      icon: Icons.play_arrow, title: "Play", onTap: () {}),
                ];
                var imageContainer = ImageContainer(state: state, index: index);
                var widgetsSections = <Widget>[
                  screenDimonsion(const SizedBox(), imageContainer, const SizedBox()),
                  SizedBox(
                    width: widgetsSectionsWidth,
                    child: Column(
                      children: [
                        DescriptionsArea(
                          centerDescriptionTitle: true,
                          descriptionTitle: state.hotAndNewModelList.isNotEmpty
                              ? "${state.hotAndNewModelList[index].originalTitle}"
                              : "sample D title*",
                          description: state.hotAndNewModelList.isNotEmpty
                              ? "${state.hotAndNewModelList[index].overview}"
                              : "sample D title*",
                        ),
                        // ifImageContainer2,
                        screenDimonsion(
                            imageContainer, const SizedBox(), imageContainer),
                        // titleAndActions,
                        TitleAndActions(
                            iconTextButtonList: iconTextButtonsList),
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
    });
  }
}
