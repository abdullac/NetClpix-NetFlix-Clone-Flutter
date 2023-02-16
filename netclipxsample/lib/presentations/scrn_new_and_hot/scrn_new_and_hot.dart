import 'package:flutter/material.dart';
import 'package:netclipxsample/presentations/core/widgets/app_bar.dart';
import 'package:netclipxsample/presentations/scrn_main_page/scrn_main_page.dart';
import 'package:netclipxsample/presentations/scrn_new_and_hot/new_hot_pages/coming_soon_widget.dart';
import 'package:netclipxsample/presentations/scrn_new_and_hot/new_hot_pages/everyones_watching_widget.dart';
import 'package:netclipxsample/presentations/scrn_new_and_hot/new_hot_widgets/tab_bar_widget.dart';

import 'new_hot_additional/new_hot_styles_directions.dart';

class ScrnNewAndHot extends StatelessWidget {
  const ScrnNewAndHot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var text = Text("New & Hot", style: appBarTextStyle);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: appBarWidget(
          title: text,
          bottomAppBar: const TabBarWidget(),
        ),
        body: SafeArea(
            child: InkWell(
          onTapDown: (details) => ScrnMainPage.bottomNavigationNotifier.value =
              BottomNavigationBarShow.invisible,
          child: Column(
            children: const [
              SizedBox(height: 15),
              Expanded(
                child: TabBarView(children: [
                  CommingSoonWidget(),
                  EveryonesWatchingwidget(),
                ]),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
