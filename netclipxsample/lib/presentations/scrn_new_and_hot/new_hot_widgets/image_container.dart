import 'package:flutter/material.dart';
import 'package:netclipxsample/presentations/core/variables/images.dart';
import 'package:netclipxsample/presentations/core/widgets/round_icon_button.dart';
import 'package:netclipxsample/presentations/scrn_new_and_hot/new_hot_additional/new_hot_dimonsions.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Stack(
        children: [
          Container(
            width: imageContainerWidth,
            height: imageContainerHeight,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(searchSampleImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Positioned(
            right: 5,
            bottom: 5,
            child: RoundIconButton(
              icon: Icons.volume_off,
            ),
          )
        ],
      ),
    );
  }
}
