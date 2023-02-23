part of 'topsearch_bloc.dart';

@freezed
class TopsearchState with _$TopsearchState {
  const factory TopsearchState({
    required bool isLoading,
    required List<TopSearchItemModel> topSearchItemList,
    required Option<Either<MainFailure, List<TopSearchItemModel>>>
        mainFailureOrTopsearchItemModel,
  }) = _TopsearchState;

  factory TopsearchState.initial() {
    return const TopsearchState(
        isLoading: true,
        topSearchItemList: [],
        mainFailureOrTopsearchItemModel: None());
  }
}
