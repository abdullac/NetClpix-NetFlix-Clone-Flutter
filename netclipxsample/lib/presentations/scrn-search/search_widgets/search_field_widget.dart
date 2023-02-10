import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchFieldWidgetArea extends StatelessWidget {
  SearchFieldWidgetArea({super.key});

  static final TextEditingController searchFieldController =
      TextEditingController();
  final ValueNotifier<bool> searchFieldClickNotifier = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: searchFieldClickNotifier,
      builder: (BuildContext context, newValue, Widget? _) {
        var boxDecoration = BoxDecoration(
          color: Colors.grey[800],
          borderRadius: const BorderRadius.all(Radius.circular(5)),
        );

        ///search field area
        return Container(
          width: double.infinity,
          decoration: boxDecoration,
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
    const prefixIcon = Icon(
      Icons.search,
      color: Colors.grey,
    );
    var suffixIcon = IconButton(
      onPressed: () {
        // clear searchField onPressed
        searchFieldController.clear();
      },
      icon: const Icon(Icons.close_rounded, color: Colors.grey),
    );
    var textFieldDecoration = BoxDecoration(
        color: Colors.grey[900],
        borderRadius: const BorderRadius.all(Radius.circular(5)));
    return Opacity(
      opacity: newValue == false ? 0.0 : 1.0,
      /// text field area
      child: CupertinoTextField(
        controller: searchFieldController,
        onTap: onTapField,
        onTapOutside: onTapOutSideField,
        prefix: prefixIcon,
        prefixMode: OverlayVisibilityMode.notEditing,
        suffix: suffixIcon,
        suffixMode: OverlayVisibilityMode.editing,
        decoration: textFieldDecoration,
        placeholder: "Search",
        placeholderStyle: TextStyle(color: Colors.grey[400]),
        style: TextStyle(color: Colors.red[500]),
      ),
    );
  }

  void onTapOutSideField(event) {
    //onTap outSide
    searchFieldClickNotifier.value = false;
  }

  void onTapField() {
    // onTap
    searchFieldClickNotifier.value = true;
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
