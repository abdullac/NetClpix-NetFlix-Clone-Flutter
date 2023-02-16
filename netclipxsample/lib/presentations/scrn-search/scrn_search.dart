import 'package:flutter/material.dart';
import 'package:netclipxsample/presentations/core/functions/dimonsions.dart';
import 'package:netclipxsample/presentations/core/widgets/title_area.dart';
import 'package:netclipxsample/presentations/scrn-search/search_widgets/search_field_widget.dart';
import 'package:netclipxsample/presentations/scrn_main_page/scrn_main_page.dart';
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
            SearchesWidget(
                searchView: newValue.text == ""
                    ? SearchView.topSearches
                    : SearchView.searchResult),
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

///  grid view
class SearchesWidget extends StatelessWidget {
  final SearchView searchView;
  const SearchesWidget({
    super.key,
    required this.searchView,
  });

  dynamic ifSearchView(ifValue, elseValue) {
    return searchView == SearchView.topSearches ? ifValue : elseValue;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTapDown: (details) => ScrnMainPage.bottomNavigationNotifier.value =
            BottomNavigationBarShow.invisible,
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: ifSearchView(
                screenDimonsion(1, 3, 2), screenDimonsion(3, 7, 4)),
            crossAxisSpacing: ifSearchView(7.0, 3.0),
            mainAxisSpacing: ifSearchView(5.0, 3.0),
            childAspectRatio: ifSearchView(5.0, 0.6),
          ),
          itemBuilder: (BuildContext context, int index) =>
              ifSearchView(const TopSearchesWidget(), const SearchResults()),
          itemCount: 15,
        ),
      ),
    );
  }
}
