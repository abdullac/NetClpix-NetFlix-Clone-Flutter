import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netclipxsample/applications/hotandnew/hot_and_new_bloc.dart';
import 'package:netclipxsample/domain/core/failures/main_failure.dart';
import 'package:netclipxsample/presentations/core/functions/dimonsions.dart';
import 'package:netclipxsample/presentations/core/variables/strings.dart';
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
    screenSizeNotifierValue(context);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HotAndNewBloc>(context)
          .add(const GetEveryOnesWatchingItems());
    });
    return BlocBuilder<HotAndNewBloc, HotAndNewState>(
        builder: (context, state) {
      return RefreshIndicator(
        onRefresh: () async {
          BlocProvider.of<HotAndNewBloc>(context)
              .add(const GetEveryOnesWatchingItems());
        },
        child: state.isLoading == true
            ? const Center(
                child: CircularProgressIndicator(strokeWidth: 2),
              )
            : "${state.mainFailureOrHotAndNewModelOption}" ==
                    "${const Some(Left(MainFailure.clientFailure()))}"
                ? const Center(child: Text(clientFailureText))
                : "${state.mainFailureOrHotAndNewModelOption}" ==
                        "${const Some(Left(MainFailure.serverFailure()))}"
                    ? const Center(child: Text(serverFailureText))
                    : state.hotAndNewModelList.isEmpty
                        ? const Center(
                            child:
                                Text(isEmptyText, textAlign: TextAlign.center))

                        /// ListView
                        : ListView.builder(
                            itemCount: state.hotAndNewModelList.length,
                            shrinkWrap: true,
                            scrollDirection: screenDimonsion(
                                Axis.vertical, Axis.vertical, Axis.horizontal),
                            itemBuilder: (BuildContext ctx, int index) {
                              final iconTextButtonsList = [
                                /// icon text buttons
                                IconTextButton(
                                    icon: Icons.share,
                                    title: "Share",
                                    onTap: () {}),
                                IconTextButton(
                                    icon: Icons.add,
                                    title: "My List",
                                    onTap: () {}),
                                IconTextButton(
                                    icon: Icons.play_arrow,
                                    title: "Play",
                                    onTap: () {}),
                              ];
                              var imageContainer =
                                  ImageContainer(state: state, index: index);

                              /// ListView item
                              var widgetsSections = <Widget>[
                                ///if widthedDimonsion, Image Container.
                                screenDimonsion(const SizedBox(),
                                    imageContainer, const SizedBox()),
                                SizedBox(
                                  width: widgetsSectionsWidth(),
                                  child: Column(
                                    children: [
                                      /// description Area
                                      DescriptionsArea(
                                        centerDescriptionTitle: true,
                                        descriptionTitle:
                                            "${state.hotAndNewModelList[index].originalTitle}",
                                        description:
                                            "${state.hotAndNewModelList[index].overview}",
                                      ),

                                      ///if not widthedDimonsion, Image Container.
                                      screenDimonsion(imageContainer,
                                          const SizedBox(), imageContainer),
                                      // title And Action buttons,
                                      TitleAndActions(
                                          iconTextButtonList:
                                              iconTextButtonsList),
                                    ],
                                  ),
                                ),
                              ];
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  width: everyoneWatchingParentListWidth(),
                                  height: everyoneWatchingParentListHieght(),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: widgetsSections,
                                  ),
                                ),
                              );
                            },
                          ),
      );
    });
  }
}
