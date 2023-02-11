import 'package:flutter/material.dart';
import 'package:netclipxsample/core/functions/styles.dart';

class IconButtonWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final void Function() onTap;
  final Size size;
  const IconButtonWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: size,
      child: InkWell(
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
      ),
    );
  }
}
