import 'package:flutter/material.dart';
import 'package:netclipxsample/presentations/core/functions/dimonsions.dart';
import 'package:netclipxsample/presentations/core/functions/styles.dart';

class TitleArea extends StatelessWidget {
  final String title;
  const TitleArea({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Padding(
        padding: const EdgeInsets.only(left: 7),
        child: Text(
          title,
          style: screenDimonsion(
              textLarge()!.copyWith(fontSize: 18),
              textLarge()!.copyWith(fontSize: 18),
              textLarge()!.copyWith(fontSize: 18)),
        ),
      ),
    );
  }
}
