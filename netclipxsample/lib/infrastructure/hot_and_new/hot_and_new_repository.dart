import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netclipxsample/domain/core/failures/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:netclipxsample/domain/hot_and_new/facade/i_hot_and_new_facade.dart';
import 'package:netclipxsample/domain/hot_and_new/models/hot_and_new_model.dart';
import 'package:netclipxsample/infrastructure/core/api_url/url.dart';

@LazySingleton(as: IHotAndNewFacade)
class HotAndNewRepository implements IHotAndNewFacade {
  @override
  Future<Either<MainFailure, List<HotAndNewModel>>> getComingSoonItems() async {
    try {
      final response = await Dio(BaseOptions()).get(Url.endPointUpcoming);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final hotAndNewModelList = (response.data["results"] as List).map((e) {
          return HotAndNewModel.fromJson(e);
        }).toList();
        return Right(hotAndNewModelList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, List<HotAndNewModel>>>
      getEveryonesWatchingItems() async {
    try {
      final response = await Dio(BaseOptions()).get(Url.endPointNowPlaying);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final hotAndNewModelList = (response.data["results"] as List).map((e) {
          return HotAndNewModel.fromJson(e);
        }).toList();
        return Right(hotAndNewModelList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
}
