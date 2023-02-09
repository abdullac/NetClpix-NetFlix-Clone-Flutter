

import 'package:flutter/material.dart';
import 'package:netclipxsample/core/variables/images.dart';

class SearchResults extends StatelessWidget {
  const SearchResults({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(searchSampleImage2),fit: BoxFit.cover),
      borderRadius: BorderRadius.all(Radius.circular(6))),
    );
  }
}