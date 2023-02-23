// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_serch_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TopSearchItemModel _$TopSearchItemModelFromJson(Map<String, dynamic> json) {
  return _TopSearchItemModel.fromJson(json);
}

/// @nodoc
mixin _$TopSearchItemModel {
  @JsonKey(name: "backdrop_path")
  String? get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: "original_title")
  String? get originalTitle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopSearchItemModelCopyWith<TopSearchItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopSearchItemModelCopyWith<$Res> {
  factory $TopSearchItemModelCopyWith(
          TopSearchItemModel value, $Res Function(TopSearchItemModel) then) =
      _$TopSearchItemModelCopyWithImpl<$Res, TopSearchItemModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "backdrop_path") String? backdropPath,
      @JsonKey(name: "original_title") String? originalTitle});
}

/// @nodoc
class _$TopSearchItemModelCopyWithImpl<$Res, $Val extends TopSearchItemModel>
    implements $TopSearchItemModelCopyWith<$Res> {
  _$TopSearchItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backdropPath = freezed,
    Object? originalTitle = freezed,
  }) {
    return _then(_value.copyWith(
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: freezed == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TopSearchItemModelCopyWith<$Res>
    implements $TopSearchItemModelCopyWith<$Res> {
  factory _$$_TopSearchItemModelCopyWith(_$_TopSearchItemModel value,
          $Res Function(_$_TopSearchItemModel) then) =
      __$$_TopSearchItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "backdrop_path") String? backdropPath,
      @JsonKey(name: "original_title") String? originalTitle});
}

/// @nodoc
class __$$_TopSearchItemModelCopyWithImpl<$Res>
    extends _$TopSearchItemModelCopyWithImpl<$Res, _$_TopSearchItemModel>
    implements _$$_TopSearchItemModelCopyWith<$Res> {
  __$$_TopSearchItemModelCopyWithImpl(
      _$_TopSearchItemModel _value, $Res Function(_$_TopSearchItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backdropPath = freezed,
    Object? originalTitle = freezed,
  }) {
    return _then(_$_TopSearchItemModel(
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: freezed == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TopSearchItemModel implements _TopSearchItemModel {
  const _$_TopSearchItemModel(
      {@JsonKey(name: "backdrop_path") required this.backdropPath,
      @JsonKey(name: "original_title") required this.originalTitle});

  factory _$_TopSearchItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_TopSearchItemModelFromJson(json);

  @override
  @JsonKey(name: "backdrop_path")
  final String? backdropPath;
  @override
  @JsonKey(name: "original_title")
  final String? originalTitle;

  @override
  String toString() {
    return 'TopSearchItemModel(backdropPath: $backdropPath, originalTitle: $originalTitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopSearchItemModel &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, backdropPath, originalTitle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TopSearchItemModelCopyWith<_$_TopSearchItemModel> get copyWith =>
      __$$_TopSearchItemModelCopyWithImpl<_$_TopSearchItemModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TopSearchItemModelToJson(
      this,
    );
  }
}

abstract class _TopSearchItemModel implements TopSearchItemModel {
  const factory _TopSearchItemModel(
      {@JsonKey(name: "backdrop_path")
          required final String? backdropPath,
      @JsonKey(name: "original_title")
          required final String? originalTitle}) = _$_TopSearchItemModel;

  factory _TopSearchItemModel.fromJson(Map<String, dynamic> json) =
      _$_TopSearchItemModel.fromJson;

  @override
  @JsonKey(name: "backdrop_path")
  String? get backdropPath;
  @override
  @JsonKey(name: "original_title")
  String? get originalTitle;
  @override
  @JsonKey(ignore: true)
  _$$_TopSearchItemModelCopyWith<_$_TopSearchItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
