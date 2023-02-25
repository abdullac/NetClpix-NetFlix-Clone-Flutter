import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netclipxsample/applications/home/home_bloc.dart';
import 'package:netclipxsample/infrastructure/core/links/link.dart';
import 'package:netclipxsample/presentations/core/functions/dimonsions.dart';
import 'package:netclipxsample/presentations/core/variables/dimonsions.dart';
import 'package:netclipxsample/presentations/core/variables/images.dart';
import 'package:netclipxsample/presentations/core/widgets/icon_text_button.dart';
import 'package:netclipxsample/presentations/scrn_home/home_direction_style_diminsion.dart/home_dimonsions.dart';
import 'package:netclipxsample/presentations/scrn_home/scrn_home_widgets/elevated_icon_button.dart';
import 'package:netclipxsample/presentations/scrn_main_page/scrn_main_page.dart';

class MainImage extends StatelessWidget {
  final HomeState state;
  const MainImage({
    super.key,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    final random = Random();
    return Container(
      height: mainImageHeight(),
      width: mainImageWidth(),
      decoration: BoxDecoration(
        /// scrnHome mainImage
        image: state.homeItemsModelList.isNotEmpty
            ? DecorationImage(
                image: NetworkImage(
                    "$imageBaseUrl${state.homeItemsModelList[random.nextInt(5)].posterPath}"),
                fit: BoxFit.cover,
              )
            : DecorationImage(image: AssetImage(netClipxAssetImage)),
      ),
      child: state.isLoading == true
          ? const Center(
              child: CircularProgressIndicator(strokeWidth: 2),
            )
          : Stack(
              children: [
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,

                  /// scrnHome buttons
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconTextButton(
                          icon: Icons.add,
                          title: "My List",
                          onTap: () {
                            print("my list");
                          }),
                      const ElevatedIconButton(),
                      IconTextButton(
                          icon: Icons.info_outline,
                          title: "Info",
                          onTap: () {
                            print("info");
                          }),
                    ],
                  ),
                )
              ],
            ),
    );
  }
}
