import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netclipxsample/domain/core/failures/main_failure.dart';
import 'package:netclipxsample/domain/search/Models/search_result_item_model/search_result_item_model.dart';
import 'package:netclipxsample/domain/search/facades/i_search_results_facade.dart';
import 'package:netclipxsample/presentations/scrn-search/search_widgets/search_field_widget.dart';

part 'search_result_event.dart';
part 'search_result_state.dart';
part 'search_result_bloc.freezed.dart';

@injectable
class SearchResultBloc extends Bloc<SearchResultEvent, SearchResultState> {
  ISearchResultsFacade iSearchResultsFacade;
  SearchResultBloc(this.iSearchResultsFacade)
      : super(SearchResultState.initial()) {
    on<_SearchResultItem>((event, emit) async {
      emit(state.copyWith(
          isLoading: true,
          searchResultItemModelList: [],
          mainFailureOrSearchResultItemModelOption: none()));
          String searchQuery = SearchFieldWidgetArea.searchFieldController.text;
      Either<MainFailure, List<SearchResultItemModel>>
          iSearchResultsFacadeEither =
          await iSearchResultsFacade.searchResultItem(searchQuery);
      print(iSearchResultsFacadeEither);
      iSearchResultsFacadeEither.fold((mainFalure) {
        emit(state.copyWith(
            isLoading: false,
            searchResultItemModelList: [],
            mainFailureOrSearchResultItemModelOption: Some(
              Left(mainFalure),
            )));
      }, (searchResultItemList) {
        emit(state.copyWith(
            isLoading: false,
            searchResultItemModelList: searchResultItemList,
            mainFailureOrSearchResultItemModelOption: Some(
              Right(searchResultItemList),
            )));
      });
    });
  }
}
