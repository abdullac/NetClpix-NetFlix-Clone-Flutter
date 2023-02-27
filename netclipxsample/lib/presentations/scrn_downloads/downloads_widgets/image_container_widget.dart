import 'dart:math';
import 'package:flutter/material.dart';
import 'package:netclipxsample/presentations/core/widgets/vertical_image_container.dart';
import 'package:netclipxsample/presentations/scrn_downloads/downloads_dimonsions/downloads_dimonsions.dart';

enum ImagePosition {
  left,
  center,
  right,
}

class ImageContainerWidget extends StatelessWidget {
  final String? imageUrl;
  final ImagePosition imagePosition;
  const ImageContainerWidget({
    super.key,
    required this.imagePosition,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: setToImage(imagePosition)["angle"],

      /// vertical image container
      child: VerticalImageContainerWidget(
        width: imageContainerWidth(imagePosition),
        height: imageContainerHeight(imagePosition),
        imageUrl: imageUrl,
        boxShadow: setToImage(imagePosition)["boxShadow"],
        margin: setToImage(imagePosition)["margin"],
      ),
    );
  }

  /// image angle, margin, shadow
  Map<String, dynamic> setToImage(ImagePosition imagePosition) {
    Map<String, dynamic> imageMap = {
      "angle": imagePosition == ImagePosition.left ||
              imagePosition == ImagePosition.right
          ? imagePosition == ImagePosition.left
              ? -25 * pi / 180
              : 25 * pi / 180
          : 0 * pi / 180,
      "margin": imagePosition == ImagePosition.left ||
              imagePosition == ImagePosition.right
          ? imagePosition == ImagePosition.left
              ? const EdgeInsets.only(right: 125, bottom: 30)
              : const EdgeInsets.only(left: 125, bottom: 30)
          : const EdgeInsets.only(top: 21),
      "boxShadow": imagePosition == ImagePosition.left ||
              imagePosition == ImagePosition.right
          ? imagePosition == ImagePosition.left
              ? leftImageShadowlist
              : rightImageShadowlist
          : centerImageShadowlist,
    };
    return imageMap;
  }

  /// shadow for center image
  List<BoxShadow> get centerImageShadowlist {
    return [
      const BoxShadow(
        color: Colors.black,
        offset: Offset(
          0.0,
          2.0,
        ),
        blurRadius: 3.0,
        spreadRadius: 2,
      ), //BoxShadow
      const BoxShadow(
        color: Colors.grey,
        offset: Offset(0.0, 0.0),
        blurRadius: 0.0,
        spreadRadius: 0.0,
      ), //BoxShadow
    ];
  }

  /// shadow for right image
  List<BoxShadow> get rightImageShadowlist {
    return [
      const BoxShadow(
        color: Colors.black,
        offset: Offset(
          2.0,
          2.0,
        ),
        blurRadius: 3.0,
        spreadRadius: 1,
      ), //BoxShadow
      const BoxShadow(
        color: Colors.grey,
        offset: Offset(0.0, 0.0),
        blurRadius: 0.0,
        spreadRadius: 0.0,
      ), //BoxShadow
    ];
  }

  /// shadow for left image
  List<BoxShadow> get leftImageShadowlist {
    return [
      const BoxShadow(
        color: Colors.black,
        offset: Offset(
          -2.0,
          2.0,
        ),
        blurRadius: 3.0,
        spreadRadius: 1,
      ), //BoxShadow
      const BoxShadow(
        color: Colors.grey,
        offset: Offset(0.0, 0.0),
        blurRadius: 0.0,
        spreadRadius: 0.0,
      ), //BoxShadow
    ];
  }
}
