import 'package:flutter/material.dart';
import 'package:netclipxsample/core/functions/dimonsions.dart';
import 'package:netclipxsample/core/variables/dimonsions.dart';
import 'package:netclipxsample/core/variables/images.dart';
import 'package:netclipxsample/presentations/scrn_downloads/downloads_dimonsions/downloads_dimonsions.dart';
import 'package:netclipxsample/presentations/scrn_downloads/downloads_widgets/image_container_widget.dart';

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
        width: /*imageChildContainerWidth*/ double.infinity,
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
