part of 'downloads_bloc.dart';

@freezed
class DownloadsState with _$DownloadsState {
  const factory DownloadsState({
    required bool isLoading,
    required List<ImageModel> imageModelList,
    required Option<Either<MainFailure, List<ImageModel>>>
        downloadsImagesFailurOrSucessOption,
  }) = _DownloadsState;

  factory DownloadsState.initial() {
    return const DownloadsState(
      isLoading: true,
      imageModelList: [],
      downloadsImagesFailurOrSucessOption: None(),
    );
  }
}
