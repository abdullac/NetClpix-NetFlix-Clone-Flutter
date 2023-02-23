part of 'search_result_bloc.dart';

@freezed
class SearchResultState with _$SearchResultState {
  const factory SearchResultState({
    required bool isLoading,
    required List<SearchResultItemModel> searchResultItemModelList,
    required Option<Either<MainFailure, List<SearchResultItemModel>>>
        mainFailureOrSearchResultItemModelOption,
  }) = _SearchResultState;

  factory SearchResultState.initial() {
    return const SearchResultState(
        isLoading: true,
        searchResultItemModelList: [],
        mainFailureOrSearchResultItemModelOption: None());
  }
}
