import 'package:dio/dio.dart';
import 'package:netclipxsample/domain/core/failures/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:netclipxsample/domain/search/facades/i_top_search_facade.dart';
import 'package:netclipxsample/domain/search/Models/top_search_item_model/top_serch_item_model.dart';
import 'package:netclipxsample/infrastructure/core/api_url/url.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ITopSearchFacade)
class SearhRepository implements ITopSearchFacade {
  @override
  Future<Either<MainFailure, List<TopSearchItemModel>>>
      getTopSearchItem() async {
    try {
      final response = await Dio(BaseOptions()).get(Url.endPointTopSearches);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final topSearchItemModelList =
            (response.data["results"] as List).map((e) {
          return TopSearchItemModel.fromJson(e);
        }).toList();
        return Right(topSearchItemModelList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
