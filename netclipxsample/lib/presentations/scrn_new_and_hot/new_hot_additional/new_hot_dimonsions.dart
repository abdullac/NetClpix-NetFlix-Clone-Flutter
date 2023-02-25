import 'package:netclipxsample/presentations/core/functions/dimonsions.dart';


dynamic comingsoonParentListviewWidth() =>
    screenDimonsion(null, double.infinity, null);
double dateSpaceWidth = screenDimonsion(
    screenWidth() * 7.8 / 100, screenWidth() * 5.2 / 100, screenWidth() * 5 / 100);
// var comingsoonSubListviewWidth =
//     screenDimonsion(screenWidth() * 85 / 100, null, screenHeight() * 60 / 100);
dynamic comingsoonImageAndDetailsWidth() =>
    screenDimonsion(screenWidth() * 84 / 100, null, screenHeight() * 60 / 100);
// var subListviewHeight = screenDimonsion(null, screenHeight() * 70 / 100, null);
dynamic comingsoonImageAndDetailsHieght() =>
    screenDimonsion(null, screenHeight() * 70 / 100, null);

dynamic detailsAreaWidth() => screenDimonsion(null, screenWidth() * 24 / 100, null);

double iconTextButtonAreaHeight() => screenDimonsion(
    screenWidth() * 12 / 100, screenHeight() * 14 / 100, screenWidth() * 7.5 / 100);

double imageContainerWidth() => screenDimonsion(
    double.infinity, screenHeight() * 100 / 100, screenHeight() * 60 / 100);
double imageContainerHeight() => screenDimonsion(
    screenWidth() * 65 / 100, screenHeight() * 60 / 100, screenHeight() * 36 / 100);

double widgetsSectionsWidth() => screenDimonsion(
    screenWidth() * 92 / 100, screenWidth() * 24 / 100, screenHeight() * 60 / 100);
