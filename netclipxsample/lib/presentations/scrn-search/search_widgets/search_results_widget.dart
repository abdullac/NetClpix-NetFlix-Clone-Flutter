import 'package:flutter/material.dart';
import 'package:netclipxsample/core/variables/images.dart';
import 'package:netclipxsample/core/widgets/vertical_image_container.dart';

class SearchResults extends StatelessWidget {
  const SearchResults({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        VerticalImageContainerWidget(
          width: double.infinity,
          height: double.infinity,
          imageUrl: searchSampleImage2,
        ),
      ],
    );
  }
}
