
import 'package:flutter/material.dart';
import 'package:netclipxsample/core/functions/styles.dart';

class TitleArea extends StatelessWidget {
  final String title;
  const TitleArea({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Text(
        title,
        style: textLarge(),
      ),
    );
  }
}
