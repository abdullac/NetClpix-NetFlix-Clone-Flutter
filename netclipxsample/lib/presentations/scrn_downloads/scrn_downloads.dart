import 'package:flutter/material.dart';
import 'package:netclipxsample/core/functions/dimonsions.dart';
import 'package:netclipxsample/core/functions/styles.dart';
import 'package:netclipxsample/core/variables/dimonsions.dart';
import 'package:netclipxsample/core/variables/images.dart';
import 'package:netclipxsample/core/variables/strings.dart';
import 'package:netclipxsample/core/widgets/app_bar.dart';
import 'package:netclipxsample/presentations/scrn_downloads/downloads_dimonsions/downloads_dimonsions.dart';
import 'package:netclipxsample/presentations/scrn_downloads/downloads_widgets/bottom_appbar.dart';
import 'package:netclipxsample/presentations/scrn_downloads/downloads_widgets/buttons_area.dart';
import 'package:netclipxsample/presentations/scrn_downloads/downloads_widgets/image_container_widget.dart';

class ScrnDownloads extends StatelessWidget {
  const ScrnDownloads({Key? key}) : super(key: key);

  /// Build function
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget("Downloads", const BottomAppBarWidget()),
      body: Stack(
        children: const [
          WidgetsListView(),
          ButtonsArea(),
        ],
      ),
    );
  }
}

///  WidgetsListView
class WidgetsListView extends StatelessWidget {
  const WidgetsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection:
          screenDimonsion(Axis.vertical, Axis.horizontal, Axis.vertical),
      children: const <Widget>[
        TextWidgetArea(),
        ImageStackArea(),
      ],
    );
  }
}

class TextWidgetArea extends StatelessWidget {
  const TextWidgetArea({super.key});

  @override
  Widget build(BuildContext context) {
    var textWidgetsList = [
      Text(
        mainTextString,
        style: textLarge(),
        textAlign: TextAlign.center,
      ),
      Text(
        subTextString,
        style: textSmall(),
        textAlign: TextAlign.center,
      ),
    ];
    return SizedBox(
      width: textAreaWidth,
      height: textAreaHeight,
      child: bigDimonsion == BigDimonsion.same
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: textWidgetsList,
            )
          : Column(
              mainAxisAlignment: bigDimonsion == BigDimonsion.width
                  ? MainAxisAlignment.start
                  : MainAxisAlignment.center,
              children: textWidgetsList,
            ),
    );
  }
}

class ImageStackArea extends StatelessWidget {
  const ImageStackArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: imageBaseContainerHeight,
      width: imageBaseContainerWidth,
      child: Container(
        alignment: Alignment.center,
        height: imageChildContainerHeight,
        width: imageChildContainerWidth,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            CircleAvatar(
              radius: screenDimonsion(screenWidth * 45 / 100,
                  screenHeight * 35 / 100, screenWidth * 28 / 100),
              backgroundColor: Colors.grey.withOpacity(0.4),
            ),
            ImageContainerWidget(
              imagePosition: ImagePosition.left,
              imageUrl: sampleVerticalImage,
            ),
            ImageContainerWidget(
              imagePosition: ImagePosition.right,
              imageUrl: sampleVerticalImage,
            ),
            ImageContainerWidget(
              imagePosition: ImagePosition.center,
              imageUrl: sampleVerticalImage,
            ),
          ],
        ),
      ),
    );
  }
}
