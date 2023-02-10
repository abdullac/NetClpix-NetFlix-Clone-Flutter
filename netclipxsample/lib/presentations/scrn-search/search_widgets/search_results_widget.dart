import 'package:flutter/material.dart';
import 'package:netclipxsample/core/variables/images.dart';
import 'package:netclipxsample/core/widgets/vertical_image_container.dart';
import 'package:netclipxsample/presentations/scrn_main_page/scrn_main_page.dart';

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
        Opacity(
          opacity: 0.0,
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              onHover: (boolValue) {
                //
                ScrnMainPage.bottomNavigationNotifier.value = false;
              },
              child: const SizedBox(),
            ),
          ),
        )
      ],
    );
  }
}
