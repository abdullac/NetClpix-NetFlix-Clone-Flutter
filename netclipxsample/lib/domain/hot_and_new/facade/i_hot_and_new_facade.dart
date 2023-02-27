import 'package:dartz/dartz.dart';
import 'package:netclipxsample/domain/core/failures/main_failure.dart';
import 'package:netclipxsample/domain/hot_and_new/models/hot_and_new_model.dart';

abstract class IHotAndNewFacade {
  Future<Either<MainFailure, List<HotAndNewModel>>> getComingSoonItems();
  Future<Either<MainFailure, List<HotAndNewModel>>> getEveryonesWatchingItems();
}
