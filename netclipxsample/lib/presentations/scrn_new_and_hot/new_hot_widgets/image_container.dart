import 'package:flutter/material.dart';
import 'package:netclipxsample/applications/hotandnew/hot_and_new_bloc.dart';
import 'package:netclipxsample/infrastructure/core/links/link.dart';
import 'package:netclipxsample/presentations/core/widgets/round_icon_button.dart';
import 'package:netclipxsample/presentations/scrn_new_and_hot/new_hot_additional/new_hot_dimonsions.dart';

class ImageContainer extends StatelessWidget {
  final HotAndNewState state;
  final int index;
  const ImageContainer({
    super.key,
    required this.state,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Stack(
        children: [
          /// container for image
          Container(
            width: imageContainerWidth(),
            height: imageContainerHeight(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "$imageBaseUrl${state.hotAndNewModelList[index].backdropPath}"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            right: 5,
            bottom: 5,
            /// round icon button for volume
            child: RoundIconButton(
              icon: Icons.volume_off,
              onPressed: () {
                print("volume button clicked");
              },
            ),
          )
        ],
      ),
    );
  }
}
