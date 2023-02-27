import 'package:dartz/dartz.dart';
import 'package:netclipxsample/domain/core/failures/main_failure.dart';
import 'package:netclipxsample/domain/search/Models/search_result_item_model/search_result_item_model.dart';

abstract class ISearchResultsFacade {
  Future<Either<MainFailure, List<SearchResultItemModel>>> searchResultItem(
      String searchQuery);
}
