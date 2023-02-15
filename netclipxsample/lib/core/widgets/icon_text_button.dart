import 'package:flutter/material.dart';
import 'package:netclipxsample/core/functions/dimonsions.dart';
import 'package:netclipxsample/core/functions/styles.dart';
import 'package:netclipxsample/core/variables/dimonsions.dart';

class IconTextButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final void Function() onTap;
  // final Size size;
  const IconTextButton({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
    // required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.grey[800],
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon,
              size: screenDimonsion(screenWidth * 6.5 / 100,
                  screenHeight * 5 / 100, screenWidth * 4.5 / 100)),
          Text(title,
              style: screenDimonsion(
                  textMedium(),
                  textMedium()?.copyWith(fontSize: screenHeight * 2.5 / 100),
                  textMedium())),
        ],
      ),
    );
  }
}













//                   SizedBox.fromSize(
//                     size: const Size(56, 56),
//                       child: ClipOval(
//                         child: Material(
//                           color: Colors.purple,
//                           child: InkWell(
//                             splashColor: Colors.green,
//                             onTap: (){},
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: const [
//                                 Icon(Icons.add),
//                                 Text("data"),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),