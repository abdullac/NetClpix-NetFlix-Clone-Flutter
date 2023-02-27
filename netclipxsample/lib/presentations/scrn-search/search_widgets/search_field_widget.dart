import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netclipxsample/applications/search/search_result/search_result_bloc.dart';

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

        return Container(
          width: double.infinity,
          decoration: boxDecoration,
          child: Stack(
            children: [
              ///search field area
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

/// search field widget
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
    /// onChanged
    onChangedField(value) async {
      await Future.delayed(const Duration(seconds: 1), () {
        BlocProvider.of<SearchResultBloc>(context)
            .add(const SearchResultEvent.searchResultItem());
      });
    }

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

      /// text field area (cupertino)
      child: CupertinoTextField(
        controller: searchFieldController,
        onChanged: onChangedField,
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

  void onTapField() {
    // onTap
    searchFieldClickNotifier.value = true;
  }

  void onTapOutSideField(event) {
    //onTap outSide
    searchFieldController.text == ""
        ? searchFieldClickNotifier.value = false
        : searchFieldClickNotifier.value;
    FocusManager.instance.primaryFocus?.unfocus();
  }
}

/// search assist widget
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
            /// Search icon
            Icon(Icons.search, color: Colors.grey[300]),

            /// Search text
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
