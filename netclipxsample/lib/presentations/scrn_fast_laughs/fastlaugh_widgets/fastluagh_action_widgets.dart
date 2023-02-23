import 'package:flutter/material.dart';
import 'package:netclipxsample/presentations/core/widgets/icon_text_button.dart';

class FastLaughsAction extends StatelessWidget {
  final IconTextButton iconTextButton;
  const FastLaughsAction(
    this.iconTextButton,{
    super.key,
    
  });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        margin: const EdgeInsets.only(right: 8, bottom: 3, top: 3),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            iconTextButton
          ],
        ),
      ),
    );
  }
}
