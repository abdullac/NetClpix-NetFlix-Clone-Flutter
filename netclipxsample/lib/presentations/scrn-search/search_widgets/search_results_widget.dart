import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netclipxsample/applications/search/search_result/search_result_bloc.dart';
import 'package:netclipxsample/infrastructure/core/links/link.dart';
import 'package:netclipxsample/presentations/core/variables/images.dart';
import 'package:netclipxsample/presentations/core/widgets/vertical_image_container.dart';
import 'package:netclipxsample/presentations/scrn-search/scrn_search.dart';
import 'package:netclipxsample/presentations/scrn-search/search_widgets/search_gridview.dart';

class SearchResults extends StatelessWidget {
  const SearchResults({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) async {});
    return BlocBuilder<SearchResultBloc, SearchResultState>(
        builder: (context, state) {
      return state.isLoading == true
          ? const Center(
              child: CircularProgressIndicator(strokeWidth: 2),
            )
          : SearchGridView(
              searchView: SearchView.searchResult,
              itemCount: state.searchResultItemModelList.length,
              itemBuilder: (BuildContext ctx, int index) {
                return Stack(
                  children: [
                    VerticalImageContainerWidget(
                      width: double.infinity,
                      height: double.infinity,
                      imageUrl: state.searchResultItemModelList.isNotEmpty
                          ? "$imageBaseUrl${state.searchResultItemModelList[index].posterPath}"
                          : searchSampleImage2,
                    ),
                  ],
                );
              },
            );
    });
  }
}
