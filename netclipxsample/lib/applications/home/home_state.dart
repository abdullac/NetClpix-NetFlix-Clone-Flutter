part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool isLoading,
    required List<HomeItemsModel> homeItemsModelList,
    required Option<Either<MainFailure, List<HomeItemsModel>>>
        mainFailureOrHomeItemsModelOption,
  }) = _HomeState;

  factory HomeState.initial() {
    return const HomeState(
        isLoading: true,
        homeItemsModelList: [],
        mainFailureOrHomeItemsModelOption: None());
  }
}
