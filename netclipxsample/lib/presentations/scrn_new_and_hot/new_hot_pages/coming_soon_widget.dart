import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:netclipxsample/applications/hotandnew/hot_and_new_bloc.dart';
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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HotAndNewBloc>(context)
          .add(const HotAndNewEvent.getComingSoonItems());
    });
    return BlocBuilder<HotAndNewBloc, HotAndNewState>(
        builder: (context, state) {
      return state.isLoading == true
          ? const Center(
              child: CircularProgressIndicator(strokeWidth: 2),
            )
          : ListView.builder(
              itemCount: state.hotAndNewModelList.length,
              scrollDirection: comingsoonParentListViewDirection,
              itemBuilder: (BuildContext context, int index) {
                var comingsoonColumn = Column(
                  children: [
                    ImageContainer(state: state, index: index),
                    ComingsoonDetailsArea(state: state, index: index),
                  ],
                );
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
                var imageAndDetailsWidgets = screenDimonsion(
                    comingsoonColumn, comingsoonRow, comingsoonColumn);
                final dateTime = DateTime.parse(
                    "${state.hotAndNewModelList[index].releaseDate}");
                final dayFormat = DateFormat('dd');
                final monthFormat = DateFormat('MMM');
                final dayFormated = dayFormat.format(dateTime);
                final monthFormated = monthFormat.format(dateTime);
                return SizedBox(
                  width: comingsoonParentListviewWidth,
                  child: Row(
                    crossAxisAlignment: comingsoonRowCrossAxis,
                    mainAxisAlignment: comingsoonRowMainAxis,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Container(
                          width: null,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                dayFormated,
                                style: textMedium(),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                monthFormated,
                                style: textMedium()?.copyWith(fontWeight: FontWeight.w800),
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
    });
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
    final dateTime =
        DateTime.parse("${state.hotAndNewModelList[index].releaseDate}");
    final dateFormate = DateFormat('dd-MM-yyyy');
    final dateFormated = dateFormate.format(dateTime);
    return SizedBox(
      width: detailsAreaWidth,
      // height: screenDimonsion(null, null, null),
      child: Column(
        children: [
          TitleAndActions(
            title: state.hotAndNewModelList.isNotEmpty
                ? "${state.hotAndNewModelList[index].originalTitle}"
                : "sample title *",
            iconTextButtonList: iconTextButtonsList,
          ),
          DescriptionsArea(
            comingOnDate: state.hotAndNewModelList.isNotEmpty
                ? "Coming on $dateFormated"
                : "sample date *",
            descriptionTitle: state.hotAndNewModelList.isNotEmpty
                ? "${state.hotAndNewModelList[index].originalTitle}"
                : "sample D Title *",
            description: state.hotAndNewModelList.isNotEmpty
                ? "${state.hotAndNewModelList[index].overview}"
                : "sample description *",
          ),
        ],
      ),
    );
  }
}
