import 'package:flutter/material.dart';
import 'package:netclipxsample/core/functions/styles.dart';

class RoundIconTextButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final void Function() onTap;
  // final Size size;
  const RoundIconTextButton({
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
      onTap: () {
        //
        onTap;
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon,size: 15,),
          Text(title,style: textMedium(),),
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