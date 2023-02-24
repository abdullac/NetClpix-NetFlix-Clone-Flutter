import 'package:dartz/dartz.dart';
import 'package:netclipxsample/domain/core/failures/main_failure.dart';
import 'package:netclipxsample/domain/home/models/home_items_model.dart';

abstract class IHomeFacade {
  Future<Either<MainFailure, List<HomeItemsModel>>> getHomeItems();
}
