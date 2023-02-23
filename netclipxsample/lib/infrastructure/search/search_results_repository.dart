





import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netclipxsample/domain/search/Models/search_result_item_model/search_result_item_model.dart';
import 'package:netclipxsample/domain/core/failures/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:netclipxsample/domain/search/facades/i_search_results_facade.dart';
import 'package:netclipxsample/infrastructure/core/api_url/url.dart';

@LazySingleton(as: ISearchResultsFacade)
class SearchResultsRepository implements ISearchResultsFacade{
  @override
  Future<Either<MainFailure, List<SearchResultItemModel>>> searchResultItem(String searchQuery) async{
    try{
      final response = await Dio(BaseOptions()).get(Url.endPointSearcheResultss+searchQuery);
      if(response.statusCode == 200 || response.statusCode == 201){
        final searchResultItemModelList = (response.data["results"]as List).map((e){
          return SearchResultItemModel.fromJson(e);
        }).toList();
        return Right(searchResultItemModelList);
      }else{
        return const Left(MainFailure.serverFailure());
      }
    }catch(e){
      return const Left(MainFailure.clientFailure());
    }
  }

}