// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_items_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeItemsModel _$HomeItemsModelFromJson(Map<String, dynamic> json) {
  return _HomeItemsModel.fromJson(json);
}

/// @nodoc
mixin _$HomeItemsModel {
  @JsonKey(name: "release_date")
  String? get releaseDate => throw _privateConstructorUsedError;
  @JsonKey(name: "vote_average")
  double? get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: "poster_path")
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: "popularity")
  double? get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: "overview")
  String? get overview => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeItemsModelCopyWith<HomeItemsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeItemsModelCopyWith<$Res> {
  factory $HomeItemsModelCopyWith(
          HomeItemsModel value, $Res Function(HomeItemsModel) then) =
      _$HomeItemsModelCopyWithImpl<$Res, HomeItemsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "release_date") String? releaseDate,
      @JsonKey(name: "vote_average") double? voteAverage,
      @JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "popularity") double? popularity,
      @JsonKey(name: "overview") String? overview});
}

/// @nodoc
class _$HomeItemsModelCopyWithImpl<$Res, $Val extends HomeItemsModel>
    implements $HomeItemsModelCopyWith<$Res> {
  _$HomeItemsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? releaseDate = freezed,
    Object? voteAverage = freezed,
    Object? posterPath = freezed,
    Object? popularity = freezed,
    Object? overview = freezed,
  }) {
    return _then(_value.copyWith(
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeItemsModelCopyWith<$Res>
    implements $HomeItemsModelCopyWith<$Res> {
  factory _$$_HomeItemsModelCopyWith(
          _$_HomeItemsModel value, $Res Function(_$_HomeItemsModel) then) =
      __$$_HomeItemsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "release_date") String? releaseDate,
      @JsonKey(name: "vote_average") double? voteAverage,
      @JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "popularity") double? popularity,
      @JsonKey(name: "overview") String? overview});
}

/// @nodoc
class __$$_HomeItemsModelCopyWithImpl<$Res>
    extends _$HomeItemsModelCopyWithImpl<$Res, _$_HomeItemsModel>
    implements _$$_HomeItemsModelCopyWith<$Res> {
  __$$_HomeItemsModelCopyWithImpl(
      _$_HomeItemsModel _value, $Res Function(_$_HomeItemsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? releaseDate = freezed,
    Object? voteAverage = freezed,
    Object? posterPath = freezed,
    Object? popularity = freezed,
    Object? overview = freezed,
  }) {
    return _then(_$_HomeItemsModel(
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomeItemsModel implements _HomeItemsModel {
  const _$_HomeItemsModel(
      {@JsonKey(name: "release_date") required this.releaseDate,
      @JsonKey(name: "vote_average") required this.voteAverage,
      @JsonKey(name: "poster_path") required this.posterPath,
      @JsonKey(name: "popularity") required this.popularity,
      @JsonKey(name: "overview") required this.overview});

  factory _$_HomeItemsModel.fromJson(Map<String, dynamic> json) =>
      _$$_HomeItemsModelFromJson(json);

  @override
  @JsonKey(name: "release_date")
  final String? releaseDate;
  @override
  @JsonKey(name: "vote_average")
  final double? voteAverage;
  @override
  @JsonKey(name: "poster_path")
  final String? posterPath;
  @override
  @JsonKey(name: "popularity")
  final double? popularity;
  @override
  @JsonKey(name: "overview")
  final String? overview;

  @override
  String toString() {
    return 'HomeItemsModel(releaseDate: $releaseDate, voteAverage: $voteAverage, posterPath: $posterPath, popularity: $popularity, overview: $overview)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeItemsModel &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.overview, overview) ||
                other.overview == overview));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, releaseDate, voteAverage, posterPath, popularity, overview);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeItemsModelCopyWith<_$_HomeItemsModel> get copyWith =>
      __$$_HomeItemsModelCopyWithImpl<_$_HomeItemsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeItemsModelToJson(
      this,
    );
  }
}

abstract class _HomeItemsModel implements HomeItemsModel {
  const factory _HomeItemsModel(
          {@JsonKey(name: "release_date") required final String? releaseDate,
          @JsonKey(name: "vote_average") required final double? voteAverage,
          @JsonKey(name: "poster_path") required final String? posterPath,
          @JsonKey(name: "popularity") required final double? popularity,
          @JsonKey(name: "overview") required final String? overview}) =
      _$_HomeItemsModel;

  factory _HomeItemsModel.fromJson(Map<String, dynamic> json) =
      _$_HomeItemsModel.fromJson;

  @override
  @JsonKey(name: "release_date")
  String? get releaseDate;
  @override
  @JsonKey(name: "vote_average")
  double? get voteAverage;
  @override
  @JsonKey(name: "poster_path")
  String? get posterPath;
  @override
  @JsonKey(name: "popularity")
  double? get popularity;
  @override
  @JsonKey(name: "overview")
  String? get overview;
  @override
  @JsonKey(ignore: true)
  _$$_HomeItemsModelCopyWith<_$_HomeItemsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
