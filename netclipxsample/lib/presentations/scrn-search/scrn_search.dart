import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netclipxsample/presentations/scrn-search/search_widgets/search_field_widget.dart';

class ScrnSearch extends StatelessWidget {
  const ScrnSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
         SearchFieldWidgetArea(),
        ],
      ),
    );
  }
}

