import 'package:freezed_annotation/freezed_annotation.dart';
part 'search_result_item_model.freezed.dart';
part 'search_result_item_model.g.dart';

@freezed
class SearchResultItemModel with _$SearchResultItemModel {
  const factory SearchResultItemModel({
    @JsonKey(name: "poster_path") required String? posterPath,
  }) = _SearchResultItem;

  factory SearchResultItemModel.fromJson(Map<String, dynamic> json) =>
      _$SearchResultItemModelFromJson(json);
}
