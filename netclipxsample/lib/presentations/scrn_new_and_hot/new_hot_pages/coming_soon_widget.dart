import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:netclipxsample/applications/hotandnew/hot_and_new_bloc.dart';
import 'package:netclipxsample/domain/core/failures/main_failure.dart';
import 'package:netclipxsample/presentations/core/functions/dimonsions.dart';
import 'package:netclipxsample/presentations/core/functions/styles.dart';
import 'package:netclipxsample/presentations/core/widgets/icon_text_button.dart';
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
    screenSizeNotifierValue(context);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HotAndNewBloc>(context).add(const GetComingSoonItems());
    });
    return BlocBuilder<HotAndNewBloc, HotAndNewState>(
      builder: (context, state) {
        return state.isLoading == true
            ? const Center(
                child: CircularProgressIndicator(strokeWidth: 2),
              )
            : "${state.mainFailureOrHotAndNewModelOption}" ==
                    "${const Some(Left(MainFailure.clientFailure()))}"
                ? const Center(
                    child: Text(
                        "C'nt connect to Server. Please check internet connection or more.",
                        textAlign: TextAlign.center))
                : state.hotAndNewModelList.isEmpty
                    ? const Center(
                        child: Text("Coming Soon Items Is Not Available.",
                            textAlign: TextAlign.center))

                    /// ListView
                    : ListView.builder(
                        itemCount: state.hotAndNewModelList.length,
                        scrollDirection: comingsoonParentListViewDirection(),
                        itemBuilder: (BuildContext context, int index) {
                          /// if heightedDimonsion, listView item shows ColumnView (image,details descriptions)
                          var comingsoonColumn = Column(
                            children: [
                              ImageContainer(state: state, index: index),
                              ComingsoonDetailsArea(state: state, index: index),
                            ],
                          );

                          /// if widthedDimonsion, listView item shows RowView (image,details descriptions)
                          var comingsoonRow = Row(
                            children: [
                              ImageContainer(state: state, index: index),
                              const SizedBox(width: 5),
                              ComingsoonDetailsArea(
                                state: state,
                                index: index,
                              ),
                            ],
                          );

                          /// listView item shows 3 type defferent screenDimonsions
                          var imageAndDetailsWidgets = screenDimonsion(
                              comingsoonColumn,
                              comingsoonRow,
                              comingsoonColumn);

                          /// date formate
                          final dateTime = DateTime.parse(
                              "${state.hotAndNewModelList[index].releaseDate}");
                          final dayFormat = DateFormat('dd');
                          final monthFormat = DateFormat('MMM');
                          final dayFormated = dayFormat.format(dateTime);
                          final monthFormated = monthFormat.format(dateTime);

                          /// ListView item (return to listview itemBuilder)
                          return SizedBox(
                            width: comingsoonParentListviewWidth(),
                            child: Row(
                              crossAxisAlignment: comingsoonRowCrossAxis(),
                              mainAxisAlignment: comingsoonRowMainAxis(),
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  child: SizedBox(
                                    width: null,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        /// date,month widgets
                                        Text(
                                          dayFormated,
                                          style: textMedium(),
                                          textAlign: TextAlign.center,
                                        ),
                                        Text(
                                          monthFormated,
                                          style: textMedium()?.copyWith(
                                              fontWeight: FontWeight.w800),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                /// image, details descriptions
                                SizedBox(
                                  width: comingsoonImageAndDetailsWidth(),
                                  height: comingsoonImageAndDetailsHieght(),
                                  child: imageAndDetailsWidgets,
                                ),
                              ],
                            ),
                          );
                        },
                      );
      },
    );
  }
}

class ComingsoonDetailsArea extends StatelessWidget {
  final HotAndNewState state;
  final int index;
  const ComingsoonDetailsArea({
    super.key,
    required this.state,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    /// icon text buttos
    final iconTextButtonsList = [
      IconTextButton(
          icon: Icons.notifications,
          title: "Remind me",
          onTap: () {
            print("remind me");
          }),
      IconTextButton(
          icon: Icons.info_rounded,
          title: "Info",
          onTap: () {
            print("info");
          }),
    ];

    /// formate coming soon date
    final dateTime =
        DateTime.parse("${state.hotAndNewModelList[index].releaseDate}");
    final dateFormate = DateFormat('dd-MM-yyyy');
    final dateFormated = dateFormate.format(dateTime);
    return SizedBox(
      width: detailsAreaWidth(),
      // height: screenDimonsion(null, null, null),
      child: Column(
        children: [
          /// title, action buttons
          TitleAndActions(
            title: "${state.hotAndNewModelList[index].originalTitle}",
            iconTextButtonList: iconTextButtonsList,
          ),

          /// description
          DescriptionsArea(
            comingOnDate: dateFormated,
            descriptionTitle:
                "${state.hotAndNewModelList[index].originalTitle}",
            description: "${state.hotAndNewModelList[index].overview}",
          ),
        ],
      ),
    );
  }
}
