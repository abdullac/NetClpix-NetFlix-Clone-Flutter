import 'package:flutter/material.dart';
import 'package:netclipxsample/presentations/core/functions/dimonsions.dart';
import 'package:netclipxsample/presentations/core/functions/styles.dart';
import 'package:netclipxsample/presentations/core/variables/dimonsions.dart';
import 'package:netclipxsample/presentations/core/variables/images.dart';

class TopSearchesWidget extends StatelessWidget {
  const TopSearchesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var searchedImageArea = Container(
      width: screenDimonsion(screenWidth * 30 / 100, screenWidth * 7 / 100,
          screenWidth * 12 / 100),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        image: DecorationImage(
            image: NetworkImage(searchSampleImage), fit: BoxFit.cover),
      ),
    );
    var movieTitleArea = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Text(
        "Movie Title",
        style: textMedium()?.copyWith(
            fontSize: screenDimonsion(screenWidth * 5 / 100,
                screenWidth * 2 / 100, screenWidth * 3 / 100)),
      ),
    );
    var playIconArea = Stack(
      alignment: Alignment.center,
      children: [
        CircleAvatar(
          backgroundColor: Colors.white70,
          radius: screenDimonsion(screenWidth * 5.55 / 100,
              screenHeight * 3.55 / 100, screenWidth * 3.55 / 100),
        ),
        Icon(
          Icons.play_circle_fill,
          color: Colors.black,
          size: screenDimonsion(screenWidth * 12.5 / 100,
              screenHeight * 8 / 100, screenWidth * 8 / 100),
        )
      ],
    );

    ///  movie tile
    return Stack(
      children: [
        SizedBox(
          // width: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  searchedImageArea,
                  movieTitleArea,
                ],
              ),
              playIconArea,
            ],
          ),
        ),
      ],
    );
  }
}
