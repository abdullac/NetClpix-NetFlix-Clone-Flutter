import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netclipxsample/applications/search/search_result/search_result_bloc.dart';
import 'package:netclipxsample/infrastructure/core/links/link.dart';
import 'package:netclipxsample/presentations/core/functions/dimonsions.dart';
import 'package:netclipxsample/presentations/core/variables/images.dart';
import 'package:netclipxsample/presentations/core/widgets/vertical_image_container.dart';
import 'package:netclipxsample/presentations/scrn-search/scrn_search.dart';
import 'package:netclipxsample/presentations/scrn-search/search_widgets/search_gridview.dart';

class SearchResultsPage extends StatelessWidget {
  const SearchResultsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    screenSizeNotifierValue(context);
    WidgetsBinding.instance.addPostFrameCallback((_) async {});
    return BlocBuilder<SearchResultBloc, SearchResultState>(
        builder: (context, state) {
      List<String> posterPathList = [];
      state.searchResultItemModelList.forEach((element) {
        if (element.posterPath != null) {
          posterPathList.add(element.posterPath!);
        }
      });
      return state.isLoading == true
          ? const Center(
              child: CircularProgressIndicator(strokeWidth: 2),
            )

          /// GridView using for Searche Result page
          : SearchGridView(
              searchView: SearchView.searchResult,
              itemCount: posterPathList.length,
              itemBuilder: (BuildContext ctx, int index) {
                return Stack(
                  children: [
                    /// image
                    VerticalImageContainerWidget(
                      width: double.infinity,
                      height: double.infinity,
                      imageUrl: posterPathList.isNotEmpty
                          ? "$imageBaseUrl${posterPathList[index]}"
                          : searchSampleImage2,
                    ),
                  ],
                );
              },
            );
    });
  }
}
