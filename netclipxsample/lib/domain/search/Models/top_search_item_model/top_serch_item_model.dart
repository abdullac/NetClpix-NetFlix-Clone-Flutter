


import 'package:freezed_annotation/freezed_annotation.dart';
part 'top_serch_item_model.freezed.dart';
part 'top_serch_item_model.g.dart';

@freezed
class TopSearchItemModel with _$TopSearchItemModel{
  const factory TopSearchItemModel({
    @JsonKey(name: "backdrop_path") required String? backdropPath,
    @JsonKey(name: "original_title") required String? originalTitle,
  }) = _TopSearchItemModel;

  factory TopSearchItemModel.fromJson(Map<String, dynamic> json) => _$TopSearchItemModelFromJson(json);
}