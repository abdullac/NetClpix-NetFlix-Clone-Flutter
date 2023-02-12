


import 'package:flutter/material.dart';
import 'package:netclipxsample/core/variables/images.dart';
import 'package:netclipxsample/core/widgets/round_icon_button.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(searchSampleImage), fit: BoxFit.cover)),
        ),
        const Positioned(
            right: 5, bottom: 5, child: RoundIconButton(icon: Icons.volume_off))
      ],
    );
  }
}