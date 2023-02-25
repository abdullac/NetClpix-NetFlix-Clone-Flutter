import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netclipxsample/domain/core/failures/main_failure.dart';
import 'package:netclipxsample/domain/hot_and_new/facade/i_hot_and_new_facade.dart';
import 'package:netclipxsample/domain/hot_and_new/models/hot_and_new_model.dart';

part 'hot_and_new_event.dart';
part 'hot_and_new_state.dart';
part 'hot_and_new_bloc.freezed.dart';

@injectable
class HotAndNewBloc extends Bloc<HotAndNewEvent, HotAndNewState> {
  IHotAndNewFacade iHotAndNewFacade;
  HotAndNewBloc(this.iHotAndNewFacade) : super(HotAndNewState.initial()) {
    on<GetComingSoonItems>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        hotAndNewModelList: [],
        mainFailureOrHotAndNewModelOption: none(),
      ));
      Either<MainFailure, List<HotAndNewModel>> comingSoonEither =
          await iHotAndNewFacade.getComingSoonItems();
      print(comingSoonEither);
      comingSoonEither.fold((mainFailure) {
        emit(state.copyWith(
          isLoading: false,
          hotAndNewModelList: [],
          mainFailureOrHotAndNewModelOption: Some(Left(mainFailure)),
        ));
      }, (hotANdNewModelList) {
        emit(state.copyWith(
          isLoading: false,
          hotAndNewModelList: hotANdNewModelList,
          mainFailureOrHotAndNewModelOption: Some(Right(hotANdNewModelList)),
        ));
      });
    });

    on<GetEveryOnesWatchingItems>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        hotAndNewModelList: [],
        mainFailureOrHotAndNewModelOption: none(),
      ));
      Either<MainFailure, List<HotAndNewModel>> everyOnesWatchingEither =
          await iHotAndNewFacade.getEveryonesWatchingItems();
      print(everyOnesWatchingEither);
      everyOnesWatchingEither.fold((mainFailure) {
        emit(state.copyWith(
          isLoading: false,
          hotAndNewModelList: [],
          mainFailureOrHotAndNewModelOption: Some(Left(mainFailure)),
        ));
      }, (hotANdNewModelList) {
        emit(state.copyWith(
          isLoading: false,
          hotAndNewModelList: hotANdNewModelList,
          mainFailureOrHotAndNewModelOption: Some(Right(hotANdNewModelList)),
        ));
      });
    });
  }
}
