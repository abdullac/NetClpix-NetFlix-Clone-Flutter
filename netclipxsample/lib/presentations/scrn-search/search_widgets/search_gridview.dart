import 'package:flutter/material.dart';
import 'package:netclipxsample/presentations/core/functions/dimonsions.dart';
import 'package:netclipxsample/presentations/scrn-search/scrn_search.dart';
import 'package:netclipxsample/presentations/scrn_main_page/scrn_main_page.dart';

class SearchGridView extends StatelessWidget {
  final SearchView searchView;
  final int itemCount;
  final Widget Function(BuildContext, int) itemBuilder;
  const SearchGridView({
    super.key,
    required this.searchView,
    required this.itemCount,
    required this.itemBuilder,
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
          itemBuilder: itemBuilder,
          itemCount: itemCount,
        ),
      ),
    );
  }
}
