import 'package:flutter/material.dart';
import 'package:netclipxsample/core/functions/dimonsions.dart';
import 'package:netclipxsample/presentations/scrn_home/home_direction_style_diminsion.dart/home_direction_style.dart';
import 'package:netclipxsample/presentations/scrn_home/scrn_home_widgets/home_appbar.dart';
import 'package:netclipxsample/presentations/scrn_home/scrn_home_widgets/categories_listview.dart';
import 'package:netclipxsample/presentations/scrn_home/scrn_home_widgets/main_image.dart';
import 'package:netclipxsample/presentations/scrn_main_page/scrn_main_page.dart';

class ScrnHome extends StatelessWidget {
  ScrnHome({Key? key}) : super(key: key);

  final List<String> titleList = [
    "Released In The Past Year",
    "Trending Now",
    "Top 10 TV Shows In India Today",
    "Tense Dreams",
    "South Indian Cinema"
  ];

  @override
  Widget build(BuildContext context) {
    var columnView = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MainImage(),
        CategoriesListView(titleList: titleList),
      ],
    );
    var rowView = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MainImage(),
        CategoriesListView(titleList: titleList),
      ],
    );
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: homeAppBarWidget(),
      body: InkWell(
        onTapDown: (details) => ScrnMainPage.bottomNavigationNotifier.value =
            BottomNavigationBarShow.transparent,
        child: ListView(
          padding: const EdgeInsets.only(top: 0),
          scrollDirection: parentListviewDirection,
          children: [
            screenDimonsion(columnView, rowView, rowView),
          ],
        ),
      ),
    );
  }

}






