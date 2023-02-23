import 'package:flutter/material.dart';
import 'package:netclipxsample/presentations/core/variables/colors.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final void Function() onPressed;
  const RoundIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.black.withOpacity(0.4),
      child: IconButton(
        icon: Icon(
          icon,
          color: clrWhite,
        ),
        onPressed: () {
          //
          onPressed();
          print("object");
        },
      ),
    );
  }
}
