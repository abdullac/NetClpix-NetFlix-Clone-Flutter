import 'package:flutter/material.dart';
import 'package:netclipxsample/core/variables/colors.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  const RoundIconButton({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.black.withOpacity(0.4),
      child: IconButton(
        icon: Icon(
          icon,
          color: clrWhite,
        ), onPressed: () { 
          //
          print("object");
         },
      ),
    );
  }
}