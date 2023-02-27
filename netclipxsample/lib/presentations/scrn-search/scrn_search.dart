import 'package:flutter/material.dart';
import 'package:netclipxsample/presentations/core/functions/dimonsions.dart';
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
    screenSizeNotifierValue(context);
    var titleAndSearchesPages = Expanded(
      child: ValueListenableBuilder(
        valueListenable: SearchFieldWidgetArea.searchFieldController,
        builder: (BuildContext context, newValue, Widget? _) => Column(
          children: [
            TitleArea(

                /// search screen title, shows 'search results' when type search field, otherwise 'top searches'.
                title: newValue.text == "" ? "Top Searches" : "Search Results"),

            /// search screen , shows 'search results page' when type search field, otherwise 'top searches page'.
            newValue.text == "" ? TopSearchesPage() : const SearchResultsPage(),
          ],
        ),
      ),
    );
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          /// area for Cupertino search field
          SearchFieldWidgetArea(),

          /// seletion of topSearches or searhRessult
          titleAndSearchesPages,
        ],
      ),
    );
  }
}
