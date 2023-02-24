import 'package:flutter/material.dart';
import 'package:netclipxsample/presentations/core/functions/styles.dart';
import 'package:netclipxsample/presentations/scrn_new_and_hot/new_hot_widgets/image_container.dart';
import '../../core/functions/dimonsions.dart';
import '../../core/variables/dimonsions.dart';

//////     styles

var appBarTextStyle = textLarge()?.copyWith(
    fontSize: screenDimonsion(screenWidth() * 8.5 / 100, screenHeight() * 6.5 / 100,
        screenWidth() * 4.5 / 100));

var tabBarTextStyle = TextStyle(
    fontSize: screenDimonsion(screenWidth() * 4.5 / 100, screenHeight() * 7.5 / 100,
        screenWidth() * 2.7 / 100),
    fontWeight: FontWeight.w500);

var everyoneWatchingParentListWidth =
    screenDimonsion(null, null, screenHeight() * 61 / 100);
var everyoneWatchingParentListHieght =
    screenDimonsion(null, screenHeight() * 60 / 100, screenHeight() * 60 / 100);
var everyoneWatchingSubListViewDirection =
    screenDimonsion(Axis.vertical, Axis.horizontal, Axis.vertical);

var comingsoonRowCrossAxis = screenDimonsion(CrossAxisAlignment.start,
    CrossAxisAlignment.start, CrossAxisAlignment.center);
var comingsoonRowMainAxis = screenDimonsion(MainAxisAlignment.center,
    MainAxisAlignment.center, MainAxisAlignment.start);
// var comingsoonSubListviwDirection =
//     screenDimonsion(Axis.vertical, Axis.horizontal, Axis.vertical);
var comingsoonParentListViewDirection =
    screenDimonsion(Axis.vertical, Axis.vertical, Axis.horizontal);

var everyoneWatchingAlignment = screenDimonsion(
    Alignment.topCenter, Alignment.topCenter, Alignment.topLeft);


// var ifImageContainer1 =
//     screenDimonsion(const SizedBox(), const ImageContainer(), const SizedBox());

// var ifImageContainer2 = screenDimonsion(
//     const ImageContainer(), const SizedBox(), const ImageContainer());

