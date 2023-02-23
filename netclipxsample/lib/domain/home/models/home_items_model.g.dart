// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_items_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomeItemsModel _$$_HomeItemsModelFromJson(Map<String, dynamic> json) =>
    _$_HomeItemsModel(
      releaseDate: json['release_date'] as String?,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
      posterPath: json['poster_path'] as String?,
      popularity: (json['popularity'] as num?)?.toDouble(),
      overview: json['overview'] as String?,
    );

Map<String, dynamic> _$$_HomeItemsModelToJson(_$_HomeItemsModel instance) =>
    <String, dynamic>{
      'release_date': instance.releaseDate,
      'vote_average': instance.voteAverage,
      'poster_path': instance.posterPath,
      'popularity': instance.popularity,
      'overview': instance.overview,
    };
