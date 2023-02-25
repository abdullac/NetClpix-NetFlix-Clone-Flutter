import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netclipxsample/applications/search/topsearch/topsearch_bloc.dart';
import 'package:netclipxsample/infrastructure/core/links/link.dart';
import 'package:netclipxsample/presentations/core/functions/styles.dart';
import 'package:netclipxsample/presentations/core/variables/images.dart';
import 'package:netclipxsample/presentations/scrn-search/scrn_search.dart';
import 'package:netclipxsample/presentations/scrn-search/search_styles/search_dimonsions.dart';
import 'package:netclipxsample/presentations/core/functions/dimonsions.dart';
import 'package:netclipxsample/presentations/scrn-search/search_widgets/search_gridview.dart';


class TopSearchesWidget extends StatelessWidget {
  TopSearchesWidget({
    super.key,
  });

  late int index;

  @override
  Widget build(BuildContext context) {
    Widget searchedImageArea(TopsearchState state) => Container(
          width: searchedImageAreaDimonsion,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            image: DecorationImage(
                image: NetworkImage(state.topSearchItemList.isNotEmpty
                    ? "$imageBaseUrl${state.topSearchItemList[index].backdropPath}"
                    : searchSampleImage),
                fit: BoxFit.cover),
          ),
        );

    Widget movieTitleArea(TopsearchState state) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            state.topSearchItemList.isNotEmpty
                ? "${state.topSearchItemList[index].originalTitle}" == "null"
                    ? "Title Not Provided*"
                    : "${state.topSearchItemList[index].originalTitle}"
                : "Movie Title",
            style: textMedium()?.copyWith(
                fontSize: movieTitleFontSize, overflow: TextOverflow.ellipsis),
          ),
        );
    Widget playIconArea(TopsearchState state) => Stack(
          alignment: Alignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white70,
              radius: playIconAreaDimonsion,
            ),
            Icon(
              Icons.play_circle_fill,
              color: Colors.black,
              size: playIconSize,
            )
          ],
        );

    ///  bloc provider
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<TopsearchBloc>(context)
          .add(const TopsearchEvent.getTopSearchItem());
    });

    ///  movie tile
    return BlocBuilder<TopsearchBloc, TopsearchState>(
        builder: (context, state) {
      return state.isLoading == true
          ? const Center(child: CircularProgressIndicator(strokeWidth: 2))
          : SearchGridView(
              searchView: SearchView.topSearches,
              itemCount: state.topSearchItemList.length,
              itemBuilder: (BuildContext ctx, int index) {
                this.index = index;
                return Stack(
                  children: [
                    SizedBox(
                      // width: 40,
                      width: screenDimonsion(screenWidth(), null, null),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                searchedImageArea(state),
                                Expanded(child: movieTitleArea(state)),
                              ],
                            ),
                          ),
                          playIconArea(state),
                        ],
                      ),
                    ),
                  ],
                );
              },
            );
    });
  }
}
