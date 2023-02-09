import 'package:flutter/material.dart';
import 'package:netclipxsample/core/functions/styles.dart';
import 'package:netclipxsample/core/variables/images.dart';

class TopSearchesWidget extends StatelessWidget {
  const TopSearchesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var searchedImageArea = Container(
      width: 80,
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
        style: textMedium(),
      ),
    );
    var playIconArea = Stack(
      alignment: Alignment.center,
      children: const [
        CircleAvatar(
          backgroundColor: Colors.white70,
          radius: 22,
        ),
        Icon(
          Icons.play_circle_fill,
          color: Colors.black,
          size: 51,
        )
      ],
    );

    ///  movie tile
    return SizedBox(
      width: 40,
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
    );
  }
}
