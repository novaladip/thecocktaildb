// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'cocktail_filter_list_base_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CocktailFilterListBaseStateTearOff {
  const _$CocktailFilterListBaseStateTearOff();

  _CocktailFilterListBaseState<Item> call<Item>(
      {required FetchStatus status,
      required List<Item> items,
      Item? selected}) {
    return _CocktailFilterListBaseState<Item>(
      status: status,
      items: items,
      selected: selected,
    );
  }
}

/// @nodoc
const $CocktailFilterListBaseState = _$CocktailFilterListBaseStateTearOff();

/// @nodoc
mixin _$CocktailFilterListBaseState<Item> {
  FetchStatus get status => throw _privateConstructorUsedError;
  List<Item> get items => throw _privateConstructorUsedError;
  Item? get selected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CocktailFilterListBaseStateCopyWith<Item, CocktailFilterListBaseState<Item>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CocktailFilterListBaseStateCopyWith<Item, $Res> {
  factory $CocktailFilterListBaseStateCopyWith(
          CocktailFilterListBaseState<Item> value,
          $Res Function(CocktailFilterListBaseState<Item>) then) =
      _$CocktailFilterListBaseStateCopyWithImpl<Item, $Res>;
  $Res call({FetchStatus status, List<Item> items, Item? selected});

  $FetchStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$CocktailFilterListBaseStateCopyWithImpl<Item, $Res>
    implements $CocktailFilterListBaseStateCopyWith<Item, $Res> {
  _$CocktailFilterListBaseStateCopyWithImpl(this._value, this._then);

  final CocktailFilterListBaseState<Item> _value;
  // ignore: unused_field
  final $Res Function(CocktailFilterListBaseState<Item>) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? items = freezed,
    Object? selected = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FetchStatus,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
      selected: selected == freezed
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as Item?,
    ));
  }

  @override
  $FetchStatusCopyWith<$Res> get status {
    return $FetchStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value));
    });
  }
}

/// @nodoc
abstract class _$CocktailFilterListBaseStateCopyWith<Item, $Res>
    implements $CocktailFilterListBaseStateCopyWith<Item, $Res> {
  factory _$CocktailFilterListBaseStateCopyWith(
          _CocktailFilterListBaseState<Item> value,
          $Res Function(_CocktailFilterListBaseState<Item>) then) =
      __$CocktailFilterListBaseStateCopyWithImpl<Item, $Res>;
  @override
  $Res call({FetchStatus status, List<Item> items, Item? selected});

  @override
  $FetchStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$CocktailFilterListBaseStateCopyWithImpl<Item, $Res>
    extends _$CocktailFilterListBaseStateCopyWithImpl<Item, $Res>
    implements _$CocktailFilterListBaseStateCopyWith<Item, $Res> {
  __$CocktailFilterListBaseStateCopyWithImpl(
      _CocktailFilterListBaseState<Item> _value,
      $Res Function(_CocktailFilterListBaseState<Item>) _then)
      : super(_value, (v) => _then(v as _CocktailFilterListBaseState<Item>));

  @override
  _CocktailFilterListBaseState<Item> get _value =>
      super._value as _CocktailFilterListBaseState<Item>;

  @override
  $Res call({
    Object? status = freezed,
    Object? items = freezed,
    Object? selected = freezed,
  }) {
    return _then(_CocktailFilterListBaseState<Item>(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FetchStatus,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
      selected: selected == freezed
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as Item?,
    ));
  }
}

/// @nodoc

class _$_CocktailFilterListBaseState<Item>
    implements _CocktailFilterListBaseState<Item> {
  const _$_CocktailFilterListBaseState(
      {required this.status, required this.items, this.selected});

  @override
  final FetchStatus status;
  @override
  final List<Item> items;
  @override
  final Item? selected;

  @override
  String toString() {
    return 'CocktailFilterListBaseState<$Item>(status: $status, items: $items, selected: $selected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CocktailFilterListBaseState<Item> &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.selected, selected) ||
                const DeepCollectionEquality()
                    .equals(other.selected, selected)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(selected);

  @JsonKey(ignore: true)
  @override
  _$CocktailFilterListBaseStateCopyWith<Item,
          _CocktailFilterListBaseState<Item>>
      get copyWith => __$CocktailFilterListBaseStateCopyWithImpl<Item,
          _CocktailFilterListBaseState<Item>>(this, _$identity);
}

abstract class _CocktailFilterListBaseState<Item>
    implements CocktailFilterListBaseState<Item> {
  const factory _CocktailFilterListBaseState(
      {required FetchStatus status,
      required List<Item> items,
      Item? selected}) = _$_CocktailFilterListBaseState<Item>;

  @override
  FetchStatus get status => throw _privateConstructorUsedError;
  @override
  List<Item> get items => throw _privateConstructorUsedError;
  @override
  Item? get selected => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CocktailFilterListBaseStateCopyWith<Item,
          _CocktailFilterListBaseState<Item>>
      get copyWith => throw _privateConstructorUsedError;
}
