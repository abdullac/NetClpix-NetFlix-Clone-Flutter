import 'dart:math';
import 'package:flutter/material.dart';
import 'package:netclipxsample/presentations/scrn_downloads/downloads_dimonsions/downloads_dimonsions.dart';

enum ImagePosition {
  left,
  center,
  right,
}

class ImageContainerWidget extends StatelessWidget {
  final String imageUrl;
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
      child: Container(
        width: imageContainerWidth(imagePosition),
        height: imageContainerHeight(imagePosition),
        margin: setToImage(imagePosition)["margin"],
        decoration: BoxDecoration(
          image:
              DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.cover),
          borderRadius: const BorderRadius.all(Radius.circular(11)),
          boxShadow: setToImage(imagePosition)["boxShadow"],
        ),
      ),
    );
  }

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
