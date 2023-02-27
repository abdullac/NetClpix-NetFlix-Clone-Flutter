import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netclipxsample/applications/search/topsearch/topsearch_bloc.dart';
import 'package:netclipxsample/infrastructure/core/links/link.dart';
import 'package:netclipxsample/presentations/core/functions/styles.dart';
import 'package:netclipxsample/presentations/core/variables/images.dart';
import 'package:netclipxsample/presentations/core/variables/strings.dart';
import 'package:netclipxsample/presentations/scrn-search/scrn_search.dart';
import 'package:netclipxsample/presentations/scrn-search/search_styles/search_dimonsions.dart';
import 'package:netclipxsample/presentations/core/functions/dimonsions.dart';
import 'package:netclipxsample/presentations/scrn-search/search_widgets/search_gridview.dart';

class TopSearchesPage extends StatelessWidget {
  TopSearchesPage({
    super.key,
  });

  late int index;

  @override
  Widget build(BuildContext context) {
    /// image
    Widget topSearchesImageArea(TopsearchState state) => Container(
          width: searchedImageAreaDimonsion(),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            image: state.topSearchItemList[index].backdropPath != null
                ? DecorationImage(
                    image: NetworkImage(
                        "$imageBaseUrl${state.topSearchItemList[index].backdropPath}"),
                    fit: BoxFit.cover)
                : DecorationImage(
                    image: AssetImage(netClipxAssetImage), fit: BoxFit.cover),
          ),
        );

    /// title
    Widget movieTitleArea(TopsearchState state) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            "${state.topSearchItemList[index].originalTitle}" == "null"
                ? "Title Not Provided*"
                : "${state.topSearchItemList[index].originalTitle}",
            style: textMedium()?.copyWith(
                fontSize: movieTitleFontSize(),
                overflow: TextOverflow.ellipsis),
          ),
        );

    /// play button
    Widget playIconArea(TopsearchState state) => Stack(
          alignment: Alignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white70,
              radius: playIconAreaDimonsion(),
            ),
            IconButton(
              padding: const EdgeInsets.all(0),
              icon: const Icon(Icons.play_circle_fill),
              iconSize: playIconSize(),
              color: Colors.black,
              onPressed: () {
                print("play icon button");
              },
            )
          ],
        );

    /// widget binding
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<TopsearchBloc>(context)
          .add(const TopsearchEvent.getTopSearchItem());
    });

    return BlocBuilder<TopsearchBloc, TopsearchState>(
        builder: (context, state) {
      return state.isLoading == true
          ? const Center(child: CircularProgressIndicator(strokeWidth: 2))

          /// GridView using for TopSearches page
          : state.topSearchItemList.isEmpty
              ? const Center(
                  child: Text(isEmptyText),
                )
              : SearchGridView(
                  searchView: SearchView.topSearches,
                  itemCount: state.topSearchItemList.length,
                  itemBuilder: (BuildContext ctx, int index) {
                    this.index = index;

                    /// stack using like gridview Tile
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
                                    /// image
                                    topSearchesImageArea(state),

                                    /// title
                                    Expanded(child: movieTitleArea(state)),
                                  ],
                                ),
                              ),

                              /// play button
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
