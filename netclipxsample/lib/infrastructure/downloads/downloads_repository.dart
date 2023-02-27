import 'package:injectable/injectable.dart';
import 'package:netclipxsample/domain/core/failures/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:netclipxsample/domain/downloads/facades/i_image_phasad_repo.dart';
import 'package:netclipxsample/domain/downloads/models/image_model.dart';
import 'package:dio/dio.dart';
import 'package:netclipxsample/infrastructure/core/api_url/url.dart';

@LazySingleton(as: IImagePhasadRepo)
class DownloadsRepository implements IImagePhasadRepo {
  @override
  Future<Either<MainFailure, List<ImageModel>>> getDownloadsImages() async {
    try {
      final response = await Dio(BaseOptions()).get(Url.endPointDownloads);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final imageModelList = (response.data["results"] as List).map((e) {
          return ImageModel.fromJson(e);
        }).toList();
        // log(_imageModelList as String);
        return Right(imageModelList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (_) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
