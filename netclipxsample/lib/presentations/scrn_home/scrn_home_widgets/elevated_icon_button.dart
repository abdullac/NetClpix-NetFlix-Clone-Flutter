import 'package:flutter/material.dart';
import 'package:netclipxsample/presentations/core/variables/colors.dart';

class ElevatedIconButton extends StatelessWidget {
  const ElevatedIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: const Icon(Icons.play_arrow),
      label: const Text(
        "Play",
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(clrWhite),
        foregroundColor: MaterialStateProperty.all(clrBlack),
        padding: MaterialStateProperty.all(
          const EdgeInsets.only(right: 5, bottom: 12, top: 12),
        ),
      ),
    );
  }
}
