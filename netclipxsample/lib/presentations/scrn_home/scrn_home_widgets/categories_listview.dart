import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netclipxsample/presentations/core/functions/dimonsions.dart';
import 'package:netclipxsample/presentations/core/variables/colors.dart';
import 'package:netclipxsample/presentations/core/variables/dimonsions.dart';
import 'package:netclipxsample/presentations/core/variables/images.dart';
import 'package:netclipxsample/presentations/core/widgets/title_area.dart';
import 'package:netclipxsample/presentations/core/widgets/vertical_image_container.dart';
import 'package:netclipxsample/presentations/scrn_home/home_direction_style_diminsion.dart/home_dimonsions.dart';
import 'package:netclipxsample/presentations/scrn_home/scrn_home_widgets/main_image.dart';

class CategoriesListView extends StatelessWidget {
  CategoriesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<String> titleList = [
      "Released In The Past Year",
      "Trending Now",
      "Top 10 TV Shows In India Today",
      "Tense Dreams",
      "South Indian Cinema",
    ];
    return SizedBox(
      width: categoryListviewWidth,
      height: screenHeight,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        padding: screenDimonsion(const EdgeInsets.only(top: 0), null, null),
        shrinkWrap: true,
        itemCount: titleList.length,
        itemBuilder: (BuildContext ctx, int parentIndex) {
          return Column(
            children: [
              screenDimonsion(
                  parentIndex == 0 ? const MainImage() : const SizedBox(),
                  const SizedBox(),
                  const SizedBox()),
              Container(
                height: 200,
                margin: const EdgeInsets.all(1),
                child: Column(
                  children: [
                    TitleArea(title: titleList[parentIndex]),
                    Expanded(
                      child: ListView.separated(
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Stack(
                            children: [
                              Container(
                                height: double.infinity,
                                padding: EdgeInsets.only(
                                    left: parentIndex % 3 == 2 ? 28 : 7),
                                child: VerticalImageContainerWidget(
                                  width: 110,
                                  height: 100,
                                  imageUrl: sampleVerticalImage,
                                ),
                              ),
                              parentIndex % 3 == 2
                                  ? Positioned(
                                      bottom: -17,
                                      left: index == 0 ? 5 : -7,
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
