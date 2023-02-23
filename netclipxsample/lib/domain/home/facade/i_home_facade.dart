


import 'package:dartz/dartz.dart';
import 'package:netclipxsample/domain/home/models/home_items_model.dart';

import '../../core/failures/main_failure.dart';

abstract class IHomeFacade{
  Future<Either<MainFailure, List<HomeItemsModel>>> getHomeItems();
}