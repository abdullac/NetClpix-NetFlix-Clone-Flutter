import 'package:flutter/material.dart';
import 'package:netclipxsample/core/functions/styles.dart';
import 'package:netclipxsample/core/variables/dimonsions.dart';
import 'package:netclipxsample/core/widgets/app_bar.dart';
import 'package:netclipxsample/presentations/scrn_new_and_hot/new_hot_widgets/coming_soon_widget.dart';
import 'package:netclipxsample/presentations/scrn_new_and_hot/new_hot_widgets/everyones_watching_widget.dart';
import 'package:netclipxsample/presentations/scrn_new_and_hot/new_hot_widgets/tab_bar_widget.dart';

import '../../core/functions/dimonsions.dart';

class ScrnNewAndHot extends StatelessWidget {
  const ScrnNewAndHot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var text = Text("New & Hot",
        style: textLarge()?.copyWith(
            fontSize: screenDimonsion(screenWidth * 8.5 / 100,
                screenHeight * 6.5 / 100, screenWidth * 4.5 / 100)));
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: appBarWidget(title: text, bottomAppBar: const TabBarWidget()),
        body: SafeArea(
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
        )),
      ),
    );
  }
}
