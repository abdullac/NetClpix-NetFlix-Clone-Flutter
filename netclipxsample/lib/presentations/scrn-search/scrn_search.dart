import 'package:flutter/material.dart';
import 'package:netclipxsample/presentations/core/widgets/title_area.dart';
import 'package:netclipxsample/presentations/scrn-search/search_widgets/search_field_widget.dart';
import 'search_widgets/search_results_widget.dart';
import 'search_widgets/top_searches_widget.dart';

enum SearchView {
  topSearches,
  searchResult,
}

class ScrnSearch extends StatelessWidget {
  const ScrnSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var titleAndSearchesArea = Expanded(
      child: ValueListenableBuilder(
        valueListenable: SearchFieldWidgetArea.searchFieldController,
        builder: (BuildContext context, newValue, Widget? _) => Column(
          children: [
            TitleArea(
                title: newValue.text == "" ? "Top Searches" : "Search Results"),
            newValue.text == "" ? TopSearchesWidget() : const SearchResults(),
          ],
        ),
      ),
    );
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SearchFieldWidgetArea(),
          titleAndSearchesArea,
        ],
      ),
    );
  }
}
