import 'package:flutter/material.dart';
import 'package:netclipxsample/presentations/core/variables/images.dart';
import 'package:netclipxsample/presentations/core/widgets/icon_text_button.dart';
import 'package:netclipxsample/presentations/scrn_home/home_direction_style_diminsion.dart/home_dimonsions.dart';
import 'package:netclipxsample/presentations/scrn_home/scrn_home_widgets/elevated_icon_button.dart';

class MainImage extends StatelessWidget {
  const MainImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: mainImageHeight,
      width: mainImagWidthy,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(sampleVerticalImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconTextButton(icon: Icons.add, title: "My List", onTap: () {print("my list");}),
                const ElevatedIconButton(),
                IconTextButton(
                    icon: Icons.info_outline, title: "Info", onTap: () {print("info");}),
              ],
            ),
          )
        ],
      ),
    );
  }
}
