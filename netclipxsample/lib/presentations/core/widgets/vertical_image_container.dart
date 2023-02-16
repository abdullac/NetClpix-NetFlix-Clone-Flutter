

import 'package:flutter/material.dart';

class VerticalImageContainerWidget extends StatelessWidget {
  final double width;
  final double height;
  final EdgeInsetsGeometry? margin;
  final String imageUrl;
  final List<BoxShadow>? boxShadow;
  const VerticalImageContainerWidget({
    super.key,
    required this.width,
    required this.height,
    this.margin,
    required this.imageUrl,
    this.boxShadow,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin ?? const EdgeInsets.all(0),
      decoration: BoxDecoration(
        image:
            DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.cover),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        boxShadow: boxShadow ??
            [
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
            ],
      ),
    );
  }
}
