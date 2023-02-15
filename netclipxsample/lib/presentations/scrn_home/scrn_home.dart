import 'package:flutter/material.dart';
import 'package:netclipxsample/core/functions/dimonsions.dart';
import 'package:netclipxsample/core/widgets/app_bar.dart';
import 'package:netclipxsample/presentations/scrn_home/home_direction_style_diminsion.dart/home_direction_style.dart';
import 'package:netclipxsample/presentations/scrn_home/scrn_home_widgets/home_appbar.dart';
import 'package:netclipxsample/presentations/scrn_home/scrn_home_widgets/categories_listview.dart';
import 'package:netclipxsample/presentations/scrn_home/scrn_home_widgets/main_image.dart';
import 'package:netclipxsample/presentations/scrn_main_page/scrn_main_page.dart';

class ScrnHome extends StatelessWidget {
  ScrnHome({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    var columnView = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // const MainImage(),      ////  change to parent list view of categoryListView
        CategoriesListView(),
      ],
    );
    var rowView = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MainImage(),
        CategoriesListView(),
      ],
    );
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: homeAppBarWidget(),
      body: InkWell(
        onTapDown: (details) => ScrnMainPage.bottomNavigationNotifier.value =
            BottomNavigationBarShow.transparent,
        child: NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            int direction = notification.direction.index;
            if(direction == 2){
              appBarShowNotifier.value = false;
            }else if(direction == 1){
              appBarShowNotifier.value = true;
            }
            appBarShowNotifier.notifyListeners();
            return false;
          },
          child: ListView(
            padding: const EdgeInsets.only(top: 0),
            scrollDirection: parentListviewDirection,
            children: [
              screenDimonsion(columnView, rowView, rowView),
            ],
          ),
        ),
      ),
    );
  }
}
