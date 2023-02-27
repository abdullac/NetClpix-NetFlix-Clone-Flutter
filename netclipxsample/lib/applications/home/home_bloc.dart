import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netclipxsample/domain/core/failures/main_failure.dart';
import 'package:netclipxsample/domain/home/facade/i_home_facade.dart';
import 'package:netclipxsample/domain/home/models/home_items_model.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  IHomeFacade iHomeFacade;
  HomeBloc(this.iHomeFacade) : super(HomeState.initial()) {
    on<GetHomeItems>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        isError: false,
        homeItemsModelList: [],
        mainFailureOrHomeItemsModelOption: none(),
      ));
      Either<MainFailure, List<HomeItemsModel>> getHomeItemsEither =
          await iHomeFacade.getHomeItems();
      print(getHomeItemsEither);
      getHomeItemsEither.fold((mainFailure) {
        emit(state.copyWith(
          isLoading: false,
          isError: true,
          homeItemsModelList: [],
          mainFailureOrHomeItemsModelOption: Some(Left(mainFailure)),
        ));
      }, (homeItemsModelList) {
        emit(state.copyWith(
          isLoading: false,
          isError: false,
          homeItemsModelList: homeItemsModelList,
          mainFailureOrHomeItemsModelOption: Some(Right(homeItemsModelList)),
        ));
      });
    });
  }
}
