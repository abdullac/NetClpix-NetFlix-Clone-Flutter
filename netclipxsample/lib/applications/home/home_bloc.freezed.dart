// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHomeItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHomeItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomeItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHomeItems value) getHomeItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHomeItems value)? getHomeItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHomeItems value)? getHomeItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetHomeItemsCopyWith<$Res> {
  factory _$$_GetHomeItemsCopyWith(
          _$_GetHomeItems value, $Res Function(_$_GetHomeItems) then) =
      __$$_GetHomeItemsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetHomeItemsCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_GetHomeItems>
    implements _$$_GetHomeItemsCopyWith<$Res> {
  __$$_GetHomeItemsCopyWithImpl(
      _$_GetHomeItems _value, $Res Function(_$_GetHomeItems) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetHomeItems implements _GetHomeItems {
  const _$_GetHomeItems();

  @override
  String toString() {
    return 'HomeEvent.getHomeItems()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetHomeItems);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHomeItems,
  }) {
    return getHomeItems();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHomeItems,
  }) {
    return getHomeItems?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomeItems,
    required TResult orElse(),
  }) {
    if (getHomeItems != null) {
      return getHomeItems();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHomeItems value) getHomeItems,
  }) {
    return getHomeItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHomeItems value)? getHomeItems,
  }) {
    return getHomeItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHomeItems value)? getHomeItems,
    required TResult orElse(),
  }) {
    if (getHomeItems != null) {
      return getHomeItems(this);
    }
    return orElse();
  }
}

abstract class _GetHomeItems implements HomeEvent {
  const factory _GetHomeItems() = _$_GetHomeItems;
}

/// @nodoc
mixin _$HomeState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<HomeItemsModel> get homeItemsModelList =>
      throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<HomeItemsModel>>>
      get mainFailureOrHomeItemsModelOption =>
          throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<HomeItemsModel> homeItemsModelList,
      Option<Either<MainFailure, List<HomeItemsModel>>>
          mainFailureOrHomeItemsModelOption});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? homeItemsModelList = null,
    Object? mainFailureOrHomeItemsModelOption = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      homeItemsModelList: null == homeItemsModelList
          ? _value.homeItemsModelList
          : homeItemsModelList // ignore: cast_nullable_to_non_nullable
              as List<HomeItemsModel>,
      mainFailureOrHomeItemsModelOption: null ==
              mainFailureOrHomeItemsModelOption
          ? _value.mainFailureOrHomeItemsModelOption
          : mainFailureOrHomeItemsModelOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<HomeItemsModel>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<HomeItemsModel> homeItemsModelList,
      Option<Either<MainFailure, List<HomeItemsModel>>>
          mainFailureOrHomeItemsModelOption});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeState>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? homeItemsModelList = null,
    Object? mainFailureOrHomeItemsModelOption = null,
  }) {
    return _then(_$_HomeState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      homeItemsModelList: null == homeItemsModelList
          ? _value._homeItemsModelList
          : homeItemsModelList // ignore: cast_nullable_to_non_nullable
              as List<HomeItemsModel>,
      mainFailureOrHomeItemsModelOption: null ==
              mainFailureOrHomeItemsModelOption
          ? _value.mainFailureOrHomeItemsModelOption
          : mainFailureOrHomeItemsModelOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<HomeItemsModel>>>,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {required this.isLoading,
      required final List<HomeItemsModel> homeItemsModelList,
      required this.mainFailureOrHomeItemsModelOption})
      : _homeItemsModelList = homeItemsModelList;

  @override
  final bool isLoading;
  final List<HomeItemsModel> _homeItemsModelList;
  @override
  List<HomeItemsModel> get homeItemsModelList {
    if (_homeItemsModelList is EqualUnmodifiableListView)
      return _homeItemsModelList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_homeItemsModelList);
  }

  @override
  final Option<Either<MainFailure, List<HomeItemsModel>>>
      mainFailureOrHomeItemsModelOption;

  @override
  String toString() {
    return 'HomeState(isLoading: $isLoading, homeItemsModelList: $homeItemsModelList, mainFailureOrHomeItemsModelOption: $mainFailureOrHomeItemsModelOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._homeItemsModelList, _homeItemsModelList) &&
            (identical(other.mainFailureOrHomeItemsModelOption,
                    mainFailureOrHomeItemsModelOption) ||
                other.mainFailureOrHomeItemsModelOption ==
                    mainFailureOrHomeItemsModelOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_homeItemsModelList),
      mainFailureOrHomeItemsModelOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required final bool isLoading,
      required final List<HomeItemsModel> homeItemsModelList,
      required final Option<Either<MainFailure, List<HomeItemsModel>>>
          mainFailureOrHomeItemsModelOption}) = _$_HomeState;

  @override
  bool get isLoading;
  @override
  List<HomeItemsModel> get homeItemsModelList;
  @override
  Option<Either<MainFailure, List<HomeItemsModel>>>
      get mainFailureOrHomeItemsModelOption;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
