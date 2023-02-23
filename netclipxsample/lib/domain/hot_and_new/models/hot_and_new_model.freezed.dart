// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hot_and_new_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HotAndNewModel _$HotAndNewModelFromJson(Map<String, dynamic> json) {
  return _HotAndNewNewModel.fromJson(json);
}

/// @nodoc
mixin _$HotAndNewModel {
  @JsonKey(name: "release_date")
  String? get releaseDate => throw _privateConstructorUsedError;
  @JsonKey(name: "backdrop_path")
  String? get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: "original_title")
  String? get originalTitle => throw _privateConstructorUsedError;
  @JsonKey(name: "overview")
  String? get overview => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HotAndNewModelCopyWith<HotAndNewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotAndNewModelCopyWith<$Res> {
  factory $HotAndNewModelCopyWith(
          HotAndNewModel value, $Res Function(HotAndNewModel) then) =
      _$HotAndNewModelCopyWithImpl<$Res, HotAndNewModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "release_date") String? releaseDate,
      @JsonKey(name: "backdrop_path") String? backdropPath,
      @JsonKey(name: "original_title") String? originalTitle,
      @JsonKey(name: "overview") String? overview});
}

/// @nodoc
class _$HotAndNewModelCopyWithImpl<$Res, $Val extends HotAndNewModel>
    implements $HotAndNewModelCopyWith<$Res> {
  _$HotAndNewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? releaseDate = freezed,
    Object? backdropPath = freezed,
    Object? originalTitle = freezed,
    Object? overview = freezed,
  }) {
    return _then(_value.copyWith(
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: freezed == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HotAndNewNewModelCopyWith<$Res>
    implements $HotAndNewModelCopyWith<$Res> {
  factory _$$_HotAndNewNewModelCopyWith(_$_HotAndNewNewModel value,
          $Res Function(_$_HotAndNewNewModel) then) =
      __$$_HotAndNewNewModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "release_date") String? releaseDate,
      @JsonKey(name: "backdrop_path") String? backdropPath,
      @JsonKey(name: "original_title") String? originalTitle,
      @JsonKey(name: "overview") String? overview});
}

/// @nodoc
class __$$_HotAndNewNewModelCopyWithImpl<$Res>
    extends _$HotAndNewModelCopyWithImpl<$Res, _$_HotAndNewNewModel>
    implements _$$_HotAndNewNewModelCopyWith<$Res> {
  __$$_HotAndNewNewModelCopyWithImpl(
      _$_HotAndNewNewModel _value, $Res Function(_$_HotAndNewNewModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? releaseDate = freezed,
    Object? backdropPath = freezed,
    Object? originalTitle = freezed,
    Object? overview = freezed,
  }) {
    return _then(_$_HotAndNewNewModel(
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: freezed == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HotAndNewNewModel implements _HotAndNewNewModel {
  const _$_HotAndNewNewModel(
      {@JsonKey(name: "release_date") required this.releaseDate,
      @JsonKey(name: "backdrop_path") required this.backdropPath,
      @JsonKey(name: "original_title") required this.originalTitle,
      @JsonKey(name: "overview") required this.overview});

  factory _$_HotAndNewNewModel.fromJson(Map<String, dynamic> json) =>
      _$$_HotAndNewNewModelFromJson(json);

  @override
  @JsonKey(name: "release_date")
  final String? releaseDate;
  @override
  @JsonKey(name: "backdrop_path")
  final String? backdropPath;
  @override
  @JsonKey(name: "original_title")
  final String? originalTitle;
  @override
  @JsonKey(name: "overview")
  final String? overview;

  @override
  String toString() {
    return 'HotAndNewModel(releaseDate: $releaseDate, backdropPath: $backdropPath, originalTitle: $originalTitle, overview: $overview)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HotAndNewNewModel &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            (identical(other.overview, overview) ||
                other.overview == overview));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, releaseDate, backdropPath, originalTitle, overview);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HotAndNewNewModelCopyWith<_$_HotAndNewNewModel> get copyWith =>
      __$$_HotAndNewNewModelCopyWithImpl<_$_HotAndNewNewModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HotAndNewNewModelToJson(
      this,
    );
  }
}

abstract class _HotAndNewNewModel implements HotAndNewModel {
  const factory _HotAndNewNewModel(
          {@JsonKey(name: "release_date") required final String? releaseDate,
          @JsonKey(name: "backdrop_path") required final String? backdropPath,
          @JsonKey(name: "original_title") required final String? originalTitle,
          @JsonKey(name: "overview") required final String? overview}) =
      _$_HotAndNewNewModel;

  factory _HotAndNewNewModel.fromJson(Map<String, dynamic> json) =
      _$_HotAndNewNewModel.fromJson;

  @override
  @JsonKey(name: "release_date")
  String? get releaseDate;
  @override
  @JsonKey(name: "backdrop_path")
  String? get backdropPath;
  @override
  @JsonKey(name: "original_title")
  String? get originalTitle;
  @override
  @JsonKey(name: "overview")
  String? get overview;
  @override
  @JsonKey(ignore: true)
  _$$_HotAndNewNewModelCopyWith<_$_HotAndNewNewModel> get copyWith =>
      throw _privateConstructorUsedError;
}
