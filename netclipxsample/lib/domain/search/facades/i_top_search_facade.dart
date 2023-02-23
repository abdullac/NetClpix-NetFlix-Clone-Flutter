import 'package:dartz/dartz.dart';
import 'package:netclipxsample/domain/core/failures/main_failure.dart';
import 'package:netclipxsample/domain/search/Models/top_search_item_model/top_serch_item_model.dart';

abstract class ITopSearchFacade {
  Future<Either<MainFailure, List<TopSearchItemModel>>> getTopSearchItem();
}
