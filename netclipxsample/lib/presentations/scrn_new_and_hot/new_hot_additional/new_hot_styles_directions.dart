import 'package:flutter/material.dart';
import 'package:netclipxsample/presentations/core/functions/dimonsions.dart';
import 'package:netclipxsample/presentations/core/functions/styles.dart';

//////     styles

TextStyle? appBarTextStyle() => textLarge()?.copyWith(
    fontSize: screenDimonsion(screenWidth() * 8.5 / 100, screenHeight() * 6.5 / 100,
        screenWidth() * 4.5 / 100));

TextStyle tabBarTextStyle() => TextStyle(
    fontSize: screenDimonsion(screenWidth() * 4.5 / 100, screenHeight() * 7.5 / 100,
        screenWidth() * 2.7 / 100),
    fontWeight: FontWeight.w500);

 everyoneWatchingParentListWidth() =>
    screenDimonsion(null, null, screenHeight() * 61 / 100);
 everyoneWatchingParentListHieght() =>
    screenDimonsion(null, screenHeight() * 60 / 100, screenHeight() * 60 / 100);
 everyoneWatchingSubListViewDirection() =>
    screenDimonsion(Axis.vertical, Axis.horizontal, Axis.vertical);

 comingsoonRowCrossAxis() => screenDimonsion(CrossAxisAlignment.start,
    CrossAxisAlignment.start, CrossAxisAlignment.center);
 comingsoonRowMainAxis()=> screenDimonsion(MainAxisAlignment.center,
    MainAxisAlignment.center, MainAxisAlignment.start);
// var comingsoonSubListviwDirection =
//     screenDimonsion(Axis.vertical, Axis.horizontal, Axis.vertical);
 comingsoonParentListViewDirection() =>
    screenDimonsion(Axis.vertical, Axis.vertical, Axis.horizontal);

 everyoneWatchingAlignment() => screenDimonsion(
    Alignment.topCenter, Alignment.topCenter, Alignment.topLeft);


// var ifImageContainer1 =
//     screenDimonsion(const SizedBox(), const ImageContainer(), const SizedBox());

// var ifImageContainer2 = screenDimonsion(
//     const ImageContainer(), const SizedBox(), const ImageContainer());

