

import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_items_model.freezed.dart';
part 'home_items_model.g.dart';

@freezed
class HomeItemsModel with _$HomeItemsModel{
  const factory HomeItemsModel({
    @JsonKey(name: "release_date") required String? releaseDate,
    @JsonKey(name: "vote_average") required double? voteAverage,
    @JsonKey(name: "poster_path") required String? posterPath,
    @JsonKey(name: "popularity") required double? popularity,
    @JsonKey(name: "overview") required String? overview,

  }) = _HomeItemsModel;

  factory HomeItemsModel.fromJson(Map<String, dynamic> json) => _$HomeItemsModelFromJson(json);
}