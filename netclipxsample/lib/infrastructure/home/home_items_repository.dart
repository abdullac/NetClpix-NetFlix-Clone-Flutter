import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netclipxsample/domain/core/failures/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:netclipxsample/domain/home/facade/i_home_facade.dart';
import 'package:netclipxsample/domain/home/models/home_items_model.dart';
import 'package:netclipxsample/infrastructure/core/api_url/url.dart';

@LazySingleton(as: IHomeFacade)
class HomeItemsRepository implements IHomeFacade {
  @override
  Future<Either<MainFailure, List<HomeItemsModel>>> getHomeItems() async {
    try {
      final response = await Dio(BaseOptions()).get(Url.endPointPopular);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final homeItemsList = (response.data["results"] as List).map((e) {
          return HomeItemsModel.fromJson(e);
        }).toList();
        return Right(homeItemsList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
}
