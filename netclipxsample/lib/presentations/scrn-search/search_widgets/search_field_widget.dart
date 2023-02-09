

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SearchFieldWidgetArea extends StatelessWidget {
    SearchFieldWidgetArea({super.key});


  static final TextEditingController searchFieldController = TextEditingController();
  final ValueNotifier<bool> searchFieldClickNotifier = ValueNotifier(false);


  @override
  Widget build(BuildContext context) {
    return  ValueListenableBuilder(
            valueListenable: searchFieldClickNotifier,
            builder: (BuildContext context, newValue, Widget? _) {
              return Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                ),
                child: Stack(
                  children: [
                    SearchFieldAssistWidget(newValue: newValue),
                    SearchFieldWidget(
                      searchFieldController: searchFieldController,
                      searchFieldClickNotifier: searchFieldClickNotifier,
                      newValue: newValue,
                    ),
                  ],
                ),
              );
            },
          );
  }
}



class SearchFieldWidget extends StatelessWidget {
  final bool newValue;
  const SearchFieldWidget({
    super.key,
    required this.searchFieldController,
    required this.searchFieldClickNotifier,
    required this.newValue,
  });

  final TextEditingController searchFieldController;
  final ValueNotifier<bool> searchFieldClickNotifier;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: newValue == false ? 0.0 : 1.0,
      child: CupertinoTextField(
        controller: searchFieldController,
        onTap: () {
          // onTap
          searchFieldClickNotifier.value = true;
        },
        onTapOutside: (event) {
          //onTap outSide
          searchFieldClickNotifier.value = false;
        },
        prefix: const Icon(
          Icons.search,
          color: Colors.grey,
        ),
        prefixMode: OverlayVisibilityMode.notEditing,
        suffix: IconButton(
            onPressed: () {
              // clear searchField onPressed
              searchFieldController.clear();
            },
            icon: const Icon(Icons.close_rounded, color: Colors.grey)),
        suffixMode: OverlayVisibilityMode.editing,
        decoration: BoxDecoration(
            color: Colors.grey[800],
            borderRadius: const BorderRadius.all(Radius.circular(5))),
        placeholder: "Search",
        placeholderStyle: TextStyle(color: Colors.grey[400]),
        style: TextStyle(color: Colors.red[500]),
      ),
    );
  }
}



class SearchFieldAssistWidget extends StatelessWidget {
  final bool newValue;
  const SearchFieldAssistWidget({
    super.key,
    required this.newValue,
  });

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: newValue == false ? 1.0 : 0.0,
      child: Padding(
        padding: const EdgeInsets.only(top: 6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.search, color: Colors.grey[300]),
            Text(
              "Search",
              style: TextStyle(
                  color: Colors.grey[400], fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
