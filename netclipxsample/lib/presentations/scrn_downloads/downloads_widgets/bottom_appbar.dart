import 'package:flutter/material.dart';
import 'package:netclipxsample/core/functions/dimonsions.dart';
import 'package:netclipxsample/core/functions/styles.dart';
import 'package:netclipxsample/core/variables/dimonsions.dart';

class BottomAppBarWidget extends StatelessWidget {
  const BottomAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Row(
        children: [
          Icon(Icons.settings,size: screenDimonsion(screenWidth*7/100, screenHeight*5/100, screenHeight*4/100),),
          SizedBox(width: 8,),
          Text(
            "Smart Download",
            style: textMedium(),
          ),
        ],
      ),
    );
  }
}
