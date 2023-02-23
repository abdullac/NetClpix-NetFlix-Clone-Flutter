import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netclipxsample/domain/core/failures/main_failure.dart';
import 'package:netclipxsample/domain/downloads/facades/i_image_phasad_repo.dart';
import 'package:netclipxsample/domain/downloads/models/image_model.dart';

part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final IImagePhasadRepo imagePhasadRepo;
  DownloadsBloc(this.imagePhasadRepo) : super(DownloadsState.initial()) {
    on<_GetDownloadsImages>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          downloadsImagesFailurOrSucessOption: none(),
        ),
      );
      final Either<MainFailure, List<ImageModel>> imagePhasadRepoEither =
          await imagePhasadRepo.getDownloadsImages();
        log(imagePhasadRepoEither.toString());
      emit(
        imagePhasadRepoEither.fold(
          (mainFailure) => state.copyWith(
            isLoading: false,
            downloadsImagesFailurOrSucessOption: Some(Left(mainFailure))
          ),
          (listOfImageModel) => state.copyWith(
            isLoading: false,
            imageModelList: listOfImageModel,
            downloadsImagesFailurOrSucessOption: Some(Right(listOfImageModel)),
          ),
        ),
      );
    });
  }
}
