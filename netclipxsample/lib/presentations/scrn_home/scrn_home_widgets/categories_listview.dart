


import 'package:flutter/material.dart';
import 'package:netclipxsample/core/functions/dimonsions.dart';
import 'package:netclipxsample/core/variables/dimonsions.dart';
import 'package:netclipxsample/core/variables/images.dart';
import 'package:netclipxsample/core/widgets/title_area.dart';
import 'package:netclipxsample/core/widgets/vertical_image_container.dart';
import 'package:netclipxsample/presentations/scrn_home/home_direction_style_diminsion.dart/home_dimonsions.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
    required this.titleList,
  });

  final List<String> titleList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: categoryListviewWidth,
      height: screenHeight,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.only(top: 0),
        shrinkWrap: true,
        itemCount: titleList.length,
        itemBuilder: (BuildContext ctx, int index) {
          return Container(
            height: 170,
            margin: const EdgeInsets.all(1),
            child: Column(
              children: [
                TitleArea(title: titleList[index]),
                Expanded(
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return VerticalImageContainerWidget(
                          width: 90, height: 90, imageUrl: sampleVerticalImage);
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        const SizedBox(
                      width: 7,
                      height: 7,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}