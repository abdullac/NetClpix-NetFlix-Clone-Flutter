

import 'package:freezed_annotation/freezed_annotation.dart';
part 'hot_and_new_model.freezed.dart';
part 'hot_and_new_model.g.dart';

@freezed
class HotAndNewModel with _$HotAndNewModel{
  const factory HotAndNewModel({
    @JsonKey(name: "release_date") required String? releaseDate,
    @JsonKey(name: "backdrop_path") required String? backdropPath,
    @JsonKey(name: "original_title") required String? originalTitle,
    @JsonKey(name: "overview") required String? overview,
  }) = _HotAndNewNewModel;

  factory HotAndNewModel.fromJson(Map<String, dynamic> json) => _$HotAndNewModelFromJson(json);
}