// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'topsearch_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TopsearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTopSearchItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTopSearchItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTopSearchItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTopSearchItem value) getTopSearchItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTopSearchItem value)? getTopSearchItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTopSearchItem value)? getTopSearchItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopsearchEventCopyWith<$Res> {
  factory $TopsearchEventCopyWith(
          TopsearchEvent value, $Res Function(TopsearchEvent) then) =
      _$TopsearchEventCopyWithImpl<$Res, TopsearchEvent>;
}

/// @nodoc
class _$TopsearchEventCopyWithImpl<$Res, $Val extends TopsearchEvent>
    implements $TopsearchEventCopyWith<$Res> {
  _$TopsearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetTopSearchItemCopyWith<$Res> {
  factory _$$_GetTopSearchItemCopyWith(
          _$_GetTopSearchItem value, $Res Function(_$_GetTopSearchItem) then) =
      __$$_GetTopSearchItemCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetTopSearchItemCopyWithImpl<$Res>
    extends _$TopsearchEventCopyWithImpl<$Res, _$_GetTopSearchItem>
    implements _$$_GetTopSearchItemCopyWith<$Res> {
  __$$_GetTopSearchItemCopyWithImpl(
      _$_GetTopSearchItem _value, $Res Function(_$_GetTopSearchItem) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetTopSearchItem implements _GetTopSearchItem {
  const _$_GetTopSearchItem();

  @override
  String toString() {
    return 'TopsearchEvent.getTopSearchItem()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetTopSearchItem);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTopSearchItem,
  }) {
    return getTopSearchItem();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTopSearchItem,
  }) {
    return getTopSearchItem?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTopSearchItem,
    required TResult orElse(),
  }) {
    if (getTopSearchItem != null) {
      return getTopSearchItem();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTopSearchItem value) getTopSearchItem,
  }) {
    return getTopSearchItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTopSearchItem value)? getTopSearchItem,
  }) {
    return getTopSearchItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTopSearchItem value)? getTopSearchItem,
    required TResult orElse(),
  }) {
    if (getTopSearchItem != null) {
      return getTopSearchItem(this);
    }
    return orElse();
  }
}

abstract class _GetTopSearchItem implements TopsearchEvent {
  const factory _GetTopSearchItem() = _$_GetTopSearchItem;
}

/// @nodoc
mixin _$TopsearchState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<TopSearchItemModel> get topSearchItemList =>
      throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<TopSearchItemModel>>>
      get mainFailureOrTopsearchItemModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TopsearchStateCopyWith<TopsearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopsearchStateCopyWith<$Res> {
  factory $TopsearchStateCopyWith(
          TopsearchState value, $Res Function(TopsearchState) then) =
      _$TopsearchStateCopyWithImpl<$Res, TopsearchState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<TopSearchItemModel> topSearchItemList,
      Option<Either<MainFailure, List<TopSearchItemModel>>>
          mainFailureOrTopsearchItemModel});
}

/// @nodoc
class _$TopsearchStateCopyWithImpl<$Res, $Val extends TopsearchState>
    implements $TopsearchStateCopyWith<$Res> {
  _$TopsearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? topSearchItemList = null,
    Object? mainFailureOrTopsearchItemModel = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      topSearchItemList: null == topSearchItemList
          ? _value.topSearchItemList
          : topSearchItemList // ignore: cast_nullable_to_non_nullable
              as List<TopSearchItemModel>,
      mainFailureOrTopsearchItemModel: null == mainFailureOrTopsearchItemModel
          ? _value.mainFailureOrTopsearchItemModel
          : mainFailureOrTopsearchItemModel // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<TopSearchItemModel>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TopsearchStateCopyWith<$Res>
    implements $TopsearchStateCopyWith<$Res> {
  factory _$$_TopsearchStateCopyWith(
          _$_TopsearchState value, $Res Function(_$_TopsearchState) then) =
      __$$_TopsearchStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<TopSearchItemModel> topSearchItemList,
      Option<Either<MainFailure, List<TopSearchItemModel>>>
          mainFailureOrTopsearchItemModel});
}

/// @nodoc
class __$$_TopsearchStateCopyWithImpl<$Res>
    extends _$TopsearchStateCopyWithImpl<$Res, _$_TopsearchState>
    implements _$$_TopsearchStateCopyWith<$Res> {
  __$$_TopsearchStateCopyWithImpl(
      _$_TopsearchState _value, $Res Function(_$_TopsearchState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? topSearchItemList = null,
    Object? mainFailureOrTopsearchItemModel = null,
  }) {
    return _then(_$_TopsearchState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      topSearchItemList: null == topSearchItemList
          ? _value._topSearchItemList
          : topSearchItemList // ignore: cast_nullable_to_non_nullable
              as List<TopSearchItemModel>,
      mainFailureOrTopsearchItemModel: null == mainFailureOrTopsearchItemModel
          ? _value.mainFailureOrTopsearchItemModel
          : mainFailureOrTopsearchItemModel // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<TopSearchItemModel>>>,
    ));
  }
}

/// @nodoc

class _$_TopsearchState implements _TopsearchState {
  const _$_TopsearchState(
      {required this.isLoading,
      required final List<TopSearchItemModel> topSearchItemList,
      required this.mainFailureOrTopsearchItemModel})
      : _topSearchItemList = topSearchItemList;

  @override
  final bool isLoading;
  final List<TopSearchItemModel> _topSearchItemList;
  @override
  List<TopSearchItemModel> get topSearchItemList {
    if (_topSearchItemList is EqualUnmodifiableListView)
      return _topSearchItemList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topSearchItemList);
  }

  @override
  final Option<Either<MainFailure, List<TopSearchItemModel>>>
      mainFailureOrTopsearchItemModel;

  @override
  String toString() {
    return 'TopsearchState(isLoading: $isLoading, topSearchItemList: $topSearchItemList, mainFailureOrTopsearchItemModel: $mainFailureOrTopsearchItemModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopsearchState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._topSearchItemList, _topSearchItemList) &&
            (identical(other.mainFailureOrTopsearchItemModel,
                    mainFailureOrTopsearchItemModel) ||
                other.mainFailureOrTopsearchItemModel ==
                    mainFailureOrTopsearchItemModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_topSearchItemList),
      mainFailureOrTopsearchItemModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TopsearchStateCopyWith<_$_TopsearchState> get copyWith =>
      __$$_TopsearchStateCopyWithImpl<_$_TopsearchState>(this, _$identity);
}

abstract class _TopsearchState implements TopsearchState {
  const factory _TopsearchState(
      {required final bool isLoading,
      required final List<TopSearchItemModel> topSearchItemList,
      required final Option<Either<MainFailure, List<TopSearchItemModel>>>
          mainFailureOrTopsearchItemModel}) = _$_TopsearchState;

  @override
  bool get isLoading;
  @override
  List<TopSearchItemModel> get topSearchItemList;
  @override
  Option<Either<MainFailure, List<TopSearchItemModel>>>
      get mainFailureOrTopsearchItemModel;
  @override
  @JsonKey(ignore: true)
  _$$_TopsearchStateCopyWith<_$_TopsearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
