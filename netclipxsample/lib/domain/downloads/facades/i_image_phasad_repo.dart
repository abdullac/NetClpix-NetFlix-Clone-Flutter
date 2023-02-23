import 'package:dartz/dartz.dart';
import 'package:netclipxsample/domain/core/failures/main_failure.dart';
import 'package:netclipxsample/domain/downloads/models/image_model.dart';

abstract class IImagePhasadRepo{
  Future<Either<MainFailure, List<ImageModel>>> getDownloadsImages();
}