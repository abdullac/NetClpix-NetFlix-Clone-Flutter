import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netclipxsample/domain/core/failures/main_failure.dart';
import 'package:netclipxsample/domain/search/Models/top_search_item_model/top_serch_item_model.dart';
import 'package:netclipxsample/domain/search/facades/i_top_search_facade.dart';

part 'topsearch_event.dart';
part 'topsearch_state.dart';
part 'topsearch_bloc.freezed.dart';

@injectable
class TopsearchBloc extends Bloc<TopsearchEvent, TopsearchState> {
  ITopSearchFacade iTopSearchFacade;
  TopsearchBloc(this.iTopSearchFacade) : super(TopsearchState.initial()) {
    on<_GetTopSearchItem>((event, emit) async {
      emit(state.copyWith(
          isLoading: true,
          topSearchItemList: [],
          mainFailureOrTopsearchItemModel: none()));
      Either<MainFailure, List<TopSearchItemModel>> iTopSearchEither =
          await iTopSearchFacade.getTopSearchItem();
      print(iTopSearchEither);
      iTopSearchEither.fold((mainFailure) {
        emit(state.copyWith(
          isLoading: false,
          topSearchItemList: [],
          mainFailureOrTopsearchItemModel: Some(Left(mainFailure)),
        ));
      }, (topSearchItemModelList) {
        emit(state.copyWith(
          isLoading: false,
          topSearchItemList: topSearchItemModelList,
          mainFailureOrTopsearchItemModel: Some(Right(topSearchItemModelList)),
        ));
      });
    });
  }
}
