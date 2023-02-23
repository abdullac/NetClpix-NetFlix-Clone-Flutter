// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_result_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchResultEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() searchResultItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? searchResultItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchResultItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchResultItem value) searchResultItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchResultItem value)? searchResultItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchResultItem value)? searchResultItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultEventCopyWith<$Res> {
  factory $SearchResultEventCopyWith(
          SearchResultEvent value, $Res Function(SearchResultEvent) then) =
      _$SearchResultEventCopyWithImpl<$Res, SearchResultEvent>;
}

/// @nodoc
class _$SearchResultEventCopyWithImpl<$Res, $Val extends SearchResultEvent>
    implements $SearchResultEventCopyWith<$Res> {
  _$SearchResultEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SearchResultItemCopyWith<$Res> {
  factory _$$_SearchResultItemCopyWith(
          _$_SearchResultItem value, $Res Function(_$_SearchResultItem) then) =
      __$$_SearchResultItemCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchResultItemCopyWithImpl<$Res>
    extends _$SearchResultEventCopyWithImpl<$Res, _$_SearchResultItem>
    implements _$$_SearchResultItemCopyWith<$Res> {
  __$$_SearchResultItemCopyWithImpl(
      _$_SearchResultItem _value, $Res Function(_$_SearchResultItem) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SearchResultItem implements _SearchResultItem {
  const _$_SearchResultItem();

  @override
  String toString() {
    return 'SearchResultEvent.searchResultItem()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SearchResultItem);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() searchResultItem,
  }) {
    return searchResultItem();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? searchResultItem,
  }) {
    return searchResultItem?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchResultItem,
    required TResult orElse(),
  }) {
    if (searchResultItem != null) {
      return searchResultItem();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchResultItem value) searchResultItem,
  }) {
    return searchResultItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchResultItem value)? searchResultItem,
  }) {
    return searchResultItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchResultItem value)? searchResultItem,
    required TResult orElse(),
  }) {
    if (searchResultItem != null) {
      return searchResultItem(this);
    }
    return orElse();
  }
}

abstract class _SearchResultItem implements SearchResultEvent {
  const factory _SearchResultItem() = _$_SearchResultItem;
}

/// @nodoc
mixin _$SearchResultState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<SearchResultItemModel> get searchResultItemModelList =>
      throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<SearchResultItemModel>>>
      get mainFailureOrSearchResultItemModelOption =>
          throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchResultStateCopyWith<SearchResultState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultStateCopyWith<$Res> {
  factory $SearchResultStateCopyWith(
          SearchResultState value, $Res Function(SearchResultState) then) =
      _$SearchResultStateCopyWithImpl<$Res, SearchResultState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<SearchResultItemModel> searchResultItemModelList,
      Option<Either<MainFailure, List<SearchResultItemModel>>>
          mainFailureOrSearchResultItemModelOption});
}

/// @nodoc
class _$SearchResultStateCopyWithImpl<$Res, $Val extends SearchResultState>
    implements $SearchResultStateCopyWith<$Res> {
  _$SearchResultStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? searchResultItemModelList = null,
    Object? mainFailureOrSearchResultItemModelOption = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      searchResultItemModelList: null == searchResultItemModelList
          ? _value.searchResultItemModelList
          : searchResultItemModelList // ignore: cast_nullable_to_non_nullable
              as List<SearchResultItemModel>,
      mainFailureOrSearchResultItemModelOption: null ==
              mainFailureOrSearchResultItemModelOption
          ? _value.mainFailureOrSearchResultItemModelOption
          : mainFailureOrSearchResultItemModelOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<SearchResultItemModel>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchResultStateCopyWith<$Res>
    implements $SearchResultStateCopyWith<$Res> {
  factory _$$_SearchResultStateCopyWith(_$_SearchResultState value,
          $Res Function(_$_SearchResultState) then) =
      __$$_SearchResultStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<SearchResultItemModel> searchResultItemModelList,
      Option<Either<MainFailure, List<SearchResultItemModel>>>
          mainFailureOrSearchResultItemModelOption});
}

/// @nodoc
class __$$_SearchResultStateCopyWithImpl<$Res>
    extends _$SearchResultStateCopyWithImpl<$Res, _$_SearchResultState>
    implements _$$_SearchResultStateCopyWith<$Res> {
  __$$_SearchResultStateCopyWithImpl(
      _$_SearchResultState _value, $Res Function(_$_SearchResultState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? searchResultItemModelList = null,
    Object? mainFailureOrSearchResultItemModelOption = null,
  }) {
    return _then(_$_SearchResultState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      searchResultItemModelList: null == searchResultItemModelList
          ? _value._searchResultItemModelList
          : searchResultItemModelList // ignore: cast_nullable_to_non_nullable
              as List<SearchResultItemModel>,
      mainFailureOrSearchResultItemModelOption: null ==
              mainFailureOrSearchResultItemModelOption
          ? _value.mainFailureOrSearchResultItemModelOption
          : mainFailureOrSearchResultItemModelOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<SearchResultItemModel>>>,
    ));
  }
}

/// @nodoc

class _$_SearchResultState implements _SearchResultState {
  const _$_SearchResultState(
      {required this.isLoading,
      required final List<SearchResultItemModel> searchResultItemModelList,
      required this.mainFailureOrSearchResultItemModelOption})
      : _searchResultItemModelList = searchResultItemModelList;

  @override
  final bool isLoading;
  final List<SearchResultItemModel> _searchResultItemModelList;
  @override
  List<SearchResultItemModel> get searchResultItemModelList {
    if (_searchResultItemModelList is EqualUnmodifiableListView)
      return _searchResultItemModelList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchResultItemModelList);
  }

  @override
  final Option<Either<MainFailure, List<SearchResultItemModel>>>
      mainFailureOrSearchResultItemModelOption;

  @override
  String toString() {
    return 'SearchResultState(isLoading: $isLoading, searchResultItemModelList: $searchResultItemModelList, mainFailureOrSearchResultItemModelOption: $mainFailureOrSearchResultItemModelOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchResultState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(
                other._searchResultItemModelList, _searchResultItemModelList) &&
            (identical(other.mainFailureOrSearchResultItemModelOption,
                    mainFailureOrSearchResultItemModelOption) ||
                other.mainFailureOrSearchResultItemModelOption ==
                    mainFailureOrSearchResultItemModelOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_searchResultItemModelList),
      mainFailureOrSearchResultItemModelOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchResultStateCopyWith<_$_SearchResultState> get copyWith =>
      __$$_SearchResultStateCopyWithImpl<_$_SearchResultState>(
          this, _$identity);
}

abstract class _SearchResultState implements SearchResultState {
  const factory _SearchResultState(
      {required final bool isLoading,
      required final List<SearchResultItemModel> searchResultItemModelList,
      required final Option<Either<MainFailure, List<SearchResultItemModel>>>
          mainFailureOrSearchResultItemModelOption}) = _$_SearchResultState;

  @override
  bool get isLoading;
  @override
  List<SearchResultItemModel> get searchResultItemModelList;
  @override
  Option<Either<MainFailure, List<SearchResultItemModel>>>
      get mainFailureOrSearchResultItemModelOption;
  @override
  @JsonKey(ignore: true)
  _$$_SearchResultStateCopyWith<_$_SearchResultState> get copyWith =>
      throw _privateConstructorUsedError;
}
