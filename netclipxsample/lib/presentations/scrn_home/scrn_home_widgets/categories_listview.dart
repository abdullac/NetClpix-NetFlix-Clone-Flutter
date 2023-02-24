import 'package:flutter/material.dart';
import 'package:netclipxsample/applications/home/home_bloc.dart';
import 'package:netclipxsample/domain/home/models/home_items_model.dart';
import 'package:netclipxsample/presentations/core/functions/dimonsions.dart';
import 'package:netclipxsample/presentations/core/variables/dimonsions.dart';
import 'package:netclipxsample/presentations/core/widgets/title_area.dart';
import 'package:netclipxsample/presentations/scrn_home/home_direction_style_diminsion.dart/home_dimonsions.dart';
import 'package:netclipxsample/presentations/scrn_home/scrn_home_widgets/images_list_view.dart';
import 'package:netclipxsample/presentations/scrn_home/scrn_home_widgets/main_image.dart';

class CategoriesListView extends StatelessWidget {
  final HomeState state;
  const CategoriesListView({
    super.key,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    /// titles for each category listview
    final List<String> titleList = [
      "Released In The Past Year",
      "Trending Now",
      "Top 10 TV Shows In India Today",
      "Tense Dreams",
      "South Indian Cinema",
    ];
    return SizedBox(
      width: categoryListviewWidth,
      height: screenHeight(),

      /// listView for make catogories
      child: state.isLoading
          ? const Center(child: CircularProgressIndicator(strokeWidth: 2))
          : ListView.builder(
              scrollDirection: Axis.vertical,
              padding:
                  screenDimonsion(const EdgeInsets.only(top: 0), null, null),
              shrinkWrap: true,
              itemCount: titleList.length,
              itemBuilder: (BuildContext ctx, int categoryIndex) {
                //
                /// method for make HomeItemsModelList from state(Bloc)
                List<HomeItemsModel> homeItemsList() {
                  List<HomeItemsModel> homeItemsList = [];
                  state.homeItemsModelList.forEach((element) {
                    //
                    /// pastYearitems
                    if (element.releaseDate != null) {
                      if (categoryIndex == 0 &&
                          element.releaseDate!.contains("2022")) {
                        homeItemsList.add(element);
                      }
                    }

                    /// trendingitems
                    if (element.popularity != null) {
                      if (categoryIndex == 1 && element.popularity! > 1500.0) {
                        homeItemsList.add(element);
                      }
                    }

                    /// topIndiaTvitems
                    if (categoryIndex == 2) {
                      homeItemsList.add(element);
                      homeItemsList.shuffle();
                    }

                    /// tenseDreamsitems
                    if (element.voteAverage != null) {
                      if (categoryIndex == 3 && element.voteAverage! > 7) {
                        homeItemsList.add(element);
                      }
                    }

                    /// southIndiaitems
                    if (element.overview != null) {
                      if (categoryIndex == 4 &&
                              element.overview!.contains("family") ||
                          element.overview!.contains("asia") ||
                          element.overview!.contains("arnataka") ||
                          element.overview!.contains("annada") ||
                          element.overview!.contains("erala") ||
                          element.overview!.contains("amil") ||
                          element.overview!.contains("alayalam") ||
                          element.overview!.contains("ndia")) {
                        homeItemsList.add(element);
                      }
                    }
                  });
                  return homeItemsList;
                }

                return Column(
                  children: [
                    /// if heighted dimonsion, mainImage is first of catogory listView.
                    /// if not heighted dimonsion, mainImage is seperated by whole screen listView.
                    screenDimonsion(
                        categoryIndex == 0
                            ? MainImage(state: state)
                            : const SizedBox(),
                        const SizedBox(),
                        const SizedBox()),
                    Container(
                      height: 200,
                      margin: const EdgeInsets.all(1),
                      child: Column(
                        children: [
                          /// title for each category
                          TitleArea(title: titleList[categoryIndex]),

                          /// horizontal listView for desplaying api images by each category.
                          ImagesListView(
                            state: state,
                            categoryIndex: categoryIndex,
                            homeItemsList: homeItemsList,
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
    );
  }
}
