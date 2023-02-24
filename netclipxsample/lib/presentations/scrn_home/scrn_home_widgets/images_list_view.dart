import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netclipxsample/applications/home/home_bloc.dart';
import 'package:netclipxsample/domain/home/models/home_items_model.dart';
import 'package:netclipxsample/infrastructure/core/links/link.dart';
import 'package:netclipxsample/presentations/core/variables/colors.dart';
import 'package:netclipxsample/presentations/core/variables/images.dart';
import 'package:netclipxsample/presentations/core/widgets/vertical_image_container.dart';

class ImagesListView extends StatelessWidget {
  const ImagesListView({
    super.key,
    required this.state,
    required this.categoryIndex,
    required this.homeItemsList,
  });

  final HomeState state;
  final int categoryIndex;
  final List<HomeItemsModel> Function() homeItemsList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: state.isLoading
          ? Center(child: CircularProgressIndicator(strokeWidth: 2))
          : ListView.separated(
              scrollDirection: Axis.horizontal,
              //
              /// if 'Top 10 Shows' listView, list length is only 10 images.
              /// otherwise, list length is how many images available.
              itemCount: categoryIndex % 3 == 2 ? 10 : homeItemsList().length,
              itemBuilder: (BuildContext context, int index) {
                //
                /// method for make image url, imageBaseUrl + posterPath.
                String? setImageUrl() {
                  if (categoryIndex == 0) {
                    return "$imageBaseUrl${homeItemsList()[index].posterPath}";
                  } else if (categoryIndex == 1) {
                    return "$imageBaseUrl${homeItemsList()[index].posterPath}";
                  } else if (categoryIndex == 2) {
                    return "$imageBaseUrl${homeItemsList()[index].posterPath}";
                  } else if (categoryIndex == 3) {
                    return "$imageBaseUrl${homeItemsList()[index].posterPath}";
                  } else if (categoryIndex == 4) {
                    return "$imageBaseUrl${homeItemsList()[index].posterPath}";
                  } else {
                    return null;
                  }
                  //  else {
                  //   return sampleVerticalImage;
                  // }
                }

                return Stack(
                  children: [
                    Container(
                      height: double.infinity,
                      padding: EdgeInsets.only(
                          left: categoryIndex % 3 == 2 ? 28 : 7),

                      /// desplays each posterPath images.
                      child: VerticalImageContainerWidget(
                          width: 110,
                          height: 100,
                          imageUrl: state.homeItemsModelList.isNotEmpty
                              ? setImageUrl()
                              : null),
                    ),

                    /// seperate catogory for numberCard imageContainer. each 2nd (3) position Listview.(Top 10 shows)
                    categoryIndex % 3 == 2
                        ? Positioned(
                            bottom: -17,
                            left: index == 0 ? 5 : -7,

                            /// make numberText on numberCards.
                            child: BorderedText(
                                strokeColor: clrWhite,
                                strokeWidth: 2.0,
                                child: Text(
                                  "${index + 1}",
                                  style: const TextStyle(
                                      fontSize: 90,
                                      color: clrBlack,
                                      fontWeight: FontWeight.w500),
                                )))

                        /// if not numberCards category.
                        : const SizedBox(),
                  ],
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(
                      // width: 7,
                      // height: 7,
                      ),
            ),
    );
  }
}
