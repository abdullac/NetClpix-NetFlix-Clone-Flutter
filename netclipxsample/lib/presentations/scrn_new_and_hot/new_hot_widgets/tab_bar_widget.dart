import 'package:flutter/material.dart';
import 'package:netclipxsample/presentations/core/functions/dimonsions.dart';
import 'package:netclipxsample/presentations/scrn_new_and_hot/new_hot_additional/new_hot_styles_directions.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    screenSizeNotifierValue(context);
    return const TabBar(
      isScrollable: true,
      splashFactory: InkRipple.splashFactory,
      labelStyle: TextStyle(),
      unselectedLabelColor: Colors.white,
      labelColor: Colors.black,
      labelPadding: EdgeInsets.all(0),
      indicatorWeight: 0,
      indicator: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15))),
      splashBorderRadius: BorderRadius.all(Radius.circular(10)),
      tabs: [
        TabBarItem(emogi: '🍿', text: 'Comming Soon'),
        TabBarItem(emogi: '👀', text: "Everyone's Watching"),
      ],
    );
  }
}

/// tab bar item
class TabBarItem extends StatelessWidget {
  final String text;
  final String emogi;
  const TabBarItem({
    super.key,
    required this.text,
    required this.emogi,
  });

  @override
  Widget build(BuildContext context) {
    screenSizeNotifierValue(context);
    return Padding(
      padding: EdgeInsets.all(screenHeight() * 0.5 / 100),
      /// tabBar emoji with text
      child: Text(
        " $emogi $text",
        maxLines: 1,
        textAlign: TextAlign.center,
        style: tabBarTextStyle(),
      ),
    );
  }
}
