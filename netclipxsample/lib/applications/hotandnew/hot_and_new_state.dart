part of 'hot_and_new_bloc.dart';

@freezed
class HotAndNewState with _$HotAndNewState {
  const factory HotAndNewState({
    required bool isLoading,
    required List<HotAndNewModel> hotAndNewModelList,
    required Option<Either<MainFailure, List<HotAndNewModel>>>
        mainFailureOrHotAndNewModelOption,
  }) = _HotAndNewState;

  factory HotAndNewState.initial() {
    return const HotAndNewState(
      isLoading: true,
      hotAndNewModelList: [],
      mainFailureOrHotAndNewModelOption: None(),
    );
  }
}
