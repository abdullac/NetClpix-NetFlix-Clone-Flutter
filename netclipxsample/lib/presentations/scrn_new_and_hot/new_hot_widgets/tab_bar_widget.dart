




import 'package:flutter/material.dart';
import 'package:netclipxsample/core/functions/dimonsions.dart';
import 'package:netclipxsample/core/functions/styles.dart';
import 'package:netclipxsample/core/variables/dimonsions.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
    return Padding(
      padding: EdgeInsets.all(screenHeight * 0.5/100),
      child: Text(
        " $emogi $text",
        maxLines: 1,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: screenDimonsion(screenWidth*4.5/100, screenHeight*7.5/100,screenWidth*2.7/100),fontWeight: FontWeight.w500),
      ),
    );
  }
}
