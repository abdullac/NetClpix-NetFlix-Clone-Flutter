


import 'package:flutter/material.dart';
import 'package:netclipxsample/core/functions/dimonsions.dart';
import 'package:netclipxsample/core/variables/dimonsions.dart';
import 'package:netclipxsample/core/variables/images.dart';
import 'package:netclipxsample/core/widgets/round_icon_button.dart';

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
            width: screenDimonsion(double.infinity, screenHeight*100/100, screenHeight*60/100),
            height: screenDimonsion(screenWidth*65/100, screenHeight*60/100, screenHeight*36/100),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(searchSampleImage), fit: BoxFit.cover)),
          ),
          const Positioned(
              right: 5, bottom: 5, child: RoundIconButton(icon: Icons.volume_off))
        ],
      ),
    );
  }
}