// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'cocktail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CocktailEventTearOff {
  const _$CocktailEventTearOff();

  _SearchByName searchByName(String name) {
    return _SearchByName(
      name,
    );
  }

  _FilterByAlcoholic filterByAlcoholic() {
    return const _FilterByAlcoholic();
  }

  _FilterByCategory filterByCategory() {
    return const _FilterByCategory();
  }

  _FilterByGlass filterByGlass() {
    return const _FilterByGlass();
  }

  _OnLoadMore onLoadMore() {
    return const _OnLoadMore();
  }

  _OnClear onClear() {
    return const _OnClear();
  }

  _OnRetry onRetry() {
    return const _OnRetry();
  }
}

/// @nodoc
const $CocktailEvent = _$CocktailEventTearOff();

/// @nodoc
mixin _$CocktailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) searchByName,
    required TResult Function() filterByAlcoholic,
    required TResult Function() filterByCategory,
    required TResult Function() filterByGlass,
    required TResult Function() onLoadMore,
    required TResult Function() onClear,
    required TResult Function() onRetry,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? searchByName,
    TResult Function()? filterByAlcoholic,
    TResult Function()? filterByCategory,
    TResult Function()? filterByGlass,
    TResult Function()? onLoadMore,
    TResult Function()? onClear,
    TResult Function()? onRetry,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchByName value) searchByName,
    required TResult Function(_FilterByAlcoholic value) filterByAlcoholic,
    required TResult Function(_FilterByCategory value) filterByCategory,
    required TResult Function(_FilterByGlass value) filterByGlass,
    required TResult Function(_OnLoadMore value) onLoadMore,
    required TResult Function(_OnClear value) onClear,
    required TResult Function(_OnRetry value) onRetry,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchByName value)? searchByName,
    TResult Function(_FilterByAlcoholic value)? filterByAlcoholic,
    TResult Function(_FilterByCategory value)? filterByCategory,
    TResult Function(_FilterByGlass value)? filterByGlass,
    TResult Function(_OnLoadMore value)? onLoadMore,
    TResult Function(_OnClear value)? onClear,
    TResult Function(_OnRetry value)? onRetry,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CocktailEventCopyWith<$Res> {
  factory $CocktailEventCopyWith(
          CocktailEvent value, $Res Function(CocktailEvent) then) =
      _$CocktailEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CocktailEventCopyWithImpl<$Res>
    implements $CocktailEventCopyWith<$Res> {
  _$CocktailEventCopyWithImpl(this._value, this._then);

  final CocktailEvent _value;
  // ignore: unused_field
  final $Res Function(CocktailEvent) _then;
}

/// @nodoc
abstract class _$SearchByNameCopyWith<$Res> {
  factory _$SearchByNameCopyWith(
          _SearchByName value, $Res Function(_SearchByName) then) =
      __$SearchByNameCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class __$SearchByNameCopyWithImpl<$Res>
    extends _$CocktailEventCopyWithImpl<$Res>
    implements _$SearchByNameCopyWith<$Res> {
  __$SearchByNameCopyWithImpl(
      _SearchByName _value, $Res Function(_SearchByName) _then)
      : super(_value, (v) => _then(v as _SearchByName));

  @override
  _SearchByName get _value => super._value as _SearchByName;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_SearchByName(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchByName implements _SearchByName {
  const _$_SearchByName(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'CocktailEvent.searchByName(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchByName &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$SearchByNameCopyWith<_SearchByName> get copyWith =>
      __$SearchByNameCopyWithImpl<_SearchByName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) searchByName,
    required TResult Function() filterByAlcoholic,
    required TResult Function() filterByCategory,
    required TResult Function() filterByGlass,
    required TResult Function() onLoadMore,
    required TResult Function() onClear,
    required TResult Function() onRetry,
  }) {
    return searchByName(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? searchByName,
    TResult Function()? filterByAlcoholic,
    TResult Function()? filterByCategory,
    TResult Function()? filterByGlass,
    TResult Function()? onLoadMore,
    TResult Function()? onClear,
    TResult Function()? onRetry,
    required TResult orElse(),
  }) {
    if (searchByName != null) {
      return searchByName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchByName value) searchByName,
    required TResult Function(_FilterByAlcoholic value) filterByAlcoholic,
    required TResult Function(_FilterByCategory value) filterByCategory,
    required TResult Function(_FilterByGlass value) filterByGlass,
    required TResult Function(_OnLoadMore value) onLoadMore,
    required TResult Function(_OnClear value) onClear,
    required TResult Function(_OnRetry value) onRetry,
  }) {
    return searchByName(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchByName value)? searchByName,
    TResult Function(_FilterByAlcoholic value)? filterByAlcoholic,
    TResult Function(_FilterByCategory value)? filterByCategory,
    TResult Function(_FilterByGlass value)? filterByGlass,
    TResult Function(_OnLoadMore value)? onLoadMore,
    TResult Function(_OnClear value)? onClear,
    TResult Function(_OnRetry value)? onRetry,
    required TResult orElse(),
  }) {
    if (searchByName != null) {
      return searchByName(this);
    }
    return orElse();
  }
}

abstract class _SearchByName implements CocktailEvent {
  const factory _SearchByName(String name) = _$_SearchByName;

  String get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SearchByNameCopyWith<_SearchByName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FilterByAlcoholicCopyWith<$Res> {
  factory _$FilterByAlcoholicCopyWith(
          _FilterByAlcoholic value, $Res Function(_FilterByAlcoholic) then) =
      __$FilterByAlcoholicCopyWithImpl<$Res>;
}

/// @nodoc
class __$FilterByAlcoholicCopyWithImpl<$Res>
    extends _$CocktailEventCopyWithImpl<$Res>
    implements _$FilterByAlcoholicCopyWith<$Res> {
  __$FilterByAlcoholicCopyWithImpl(
      _FilterByAlcoholic _value, $Res Function(_FilterByAlcoholic) _then)
      : super(_value, (v) => _then(v as _FilterByAlcoholic));

  @override
  _FilterByAlcoholic get _value => super._value as _FilterByAlcoholic;
}

/// @nodoc

class _$_FilterByAlcoholic implements _FilterByAlcoholic {
  const _$_FilterByAlcoholic();

  @override
  String toString() {
    return 'CocktailEvent.filterByAlcoholic()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FilterByAlcoholic);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) searchByName,
    required TResult Function() filterByAlcoholic,
    required TResult Function() filterByCategory,
    required TResult Function() filterByGlass,
    required TResult Function() onLoadMore,
    required TResult Function() onClear,
    required TResult Function() onRetry,
  }) {
    return filterByAlcoholic();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? searchByName,
    TResult Function()? filterByAlcoholic,
    TResult Function()? filterByCategory,
    TResult Function()? filterByGlass,
    TResult Function()? onLoadMore,
    TResult Function()? onClear,
    TResult Function()? onRetry,
    required TResult orElse(),
  }) {
    if (filterByAlcoholic != null) {
      return filterByAlcoholic();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchByName value) searchByName,
    required TResult Function(_FilterByAlcoholic value) filterByAlcoholic,
    required TResult Function(_FilterByCategory value) filterByCategory,
    required TResult Function(_FilterByGlass value) filterByGlass,
    required TResult Function(_OnLoadMore value) onLoadMore,
    required TResult Function(_OnClear value) onClear,
    required TResult Function(_OnRetry value) onRetry,
  }) {
    return filterByAlcoholic(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchByName value)? searchByName,
    TResult Function(_FilterByAlcoholic value)? filterByAlcoholic,
    TResult Function(_FilterByCategory value)? filterByCategory,
    TResult Function(_FilterByGlass value)? filterByGlass,
    TResult Function(_OnLoadMore value)? onLoadMore,
    TResult Function(_OnClear value)? onClear,
    TResult Function(_OnRetry value)? onRetry,
    required TResult orElse(),
  }) {
    if (filterByAlcoholic != null) {
      return filterByAlcoholic(this);
    }
    return orElse();
  }
}

abstract class _FilterByAlcoholic implements CocktailEvent {
  const factory _FilterByAlcoholic() = _$_FilterByAlcoholic;
}

/// @nodoc
abstract class _$FilterByCategoryCopyWith<$Res> {
  factory _$FilterByCategoryCopyWith(
          _FilterByCategory value, $Res Function(_FilterByCategory) then) =
      __$FilterByCategoryCopyWithImpl<$Res>;
}

/// @nodoc
class __$FilterByCategoryCopyWithImpl<$Res>
    extends _$CocktailEventCopyWithImpl<$Res>
    implements _$FilterByCategoryCopyWith<$Res> {
  __$FilterByCategoryCopyWithImpl(
      _FilterByCategory _value, $Res Function(_FilterByCategory) _then)
      : super(_value, (v) => _then(v as _FilterByCategory));

  @override
  _FilterByCategory get _value => super._value as _FilterByCategory;
}

/// @nodoc

class _$_FilterByCategory implements _FilterByCategory {
  const _$_FilterByCategory();

  @override
  String toString() {
    return 'CocktailEvent.filterByCategory()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FilterByCategory);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) searchByName,
    required TResult Function() filterByAlcoholic,
    required TResult Function() filterByCategory,
    required TResult Function() filterByGlass,
    required TResult Function() onLoadMore,
    required TResult Function() onClear,
    required TResult Function() onRetry,
  }) {
    return filterByCategory();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? searchByName,
    TResult Function()? filterByAlcoholic,
    TResult Function()? filterByCategory,
    TResult Function()? filterByGlass,
    TResult Function()? onLoadMore,
    TResult Function()? onClear,
    TResult Function()? onRetry,
    required TResult orElse(),
  }) {
    if (filterByCategory != null) {
      return filterByCategory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchByName value) searchByName,
    required TResult Function(_FilterByAlcoholic value) filterByAlcoholic,
    required TResult Function(_FilterByCategory value) filterByCategory,
    required TResult Function(_FilterByGlass value) filterByGlass,
    required TResult Function(_OnLoadMore value) onLoadMore,
    required TResult Function(_OnClear value) onClear,
    required TResult Function(_OnRetry value) onRetry,
  }) {
    return filterByCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchByName value)? searchByName,
    TResult Function(_FilterByAlcoholic value)? filterByAlcoholic,
    TResult Function(_FilterByCategory value)? filterByCategory,
    TResult Function(_FilterByGlass value)? filterByGlass,
    TResult Function(_OnLoadMore value)? onLoadMore,
    TResult Function(_OnClear value)? onClear,
    TResult Function(_OnRetry value)? onRetry,
    required TResult orElse(),
  }) {
    if (filterByCategory != null) {
      return filterByCategory(this);
    }
    return orElse();
  }
}

abstract class _FilterByCategory implements CocktailEvent {
  const factory _FilterByCategory() = _$_FilterByCategory;
}

/// @nodoc
abstract class _$FilterByGlassCopyWith<$Res> {
  factory _$FilterByGlassCopyWith(
          _FilterByGlass value, $Res Function(_FilterByGlass) then) =
      __$FilterByGlassCopyWithImpl<$Res>;
}

/// @nodoc
class __$FilterByGlassCopyWithImpl<$Res>
    extends _$CocktailEventCopyWithImpl<$Res>
    implements _$FilterByGlassCopyWith<$Res> {
  __$FilterByGlassCopyWithImpl(
      _FilterByGlass _value, $Res Function(_FilterByGlass) _then)
      : super(_value, (v) => _then(v as _FilterByGlass));

  @override
  _FilterByGlass get _value => super._value as _FilterByGlass;
}

/// @nodoc

class _$_FilterByGlass implements _FilterByGlass {
  const _$_FilterByGlass();

  @override
  String toString() {
    return 'CocktailEvent.filterByGlass()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FilterByGlass);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) searchByName,
    required TResult Function() filterByAlcoholic,
    required TResult Function() filterByCategory,
    required TResult Function() filterByGlass,
    required TResult Function() onLoadMore,
    required TResult Function() onClear,
    required TResult Function() onRetry,
  }) {
    return filterByGlass();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? searchByName,
    TResult Function()? filterByAlcoholic,
    TResult Function()? filterByCategory,
    TResult Function()? filterByGlass,
    TResult Function()? onLoadMore,
    TResult Function()? onClear,
    TResult Function()? onRetry,
    required TResult orElse(),
  }) {
    if (filterByGlass != null) {
      return filterByGlass();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchByName value) searchByName,
    required TResult Function(_FilterByAlcoholic value) filterByAlcoholic,
    required TResult Function(_FilterByCategory value) filterByCategory,
    required TResult Function(_FilterByGlass value) filterByGlass,
    required TResult Function(_OnLoadMore value) onLoadMore,
    required TResult Function(_OnClear value) onClear,
    required TResult Function(_OnRetry value) onRetry,
  }) {
    return filterByGlass(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchByName value)? searchByName,
    TResult Function(_FilterByAlcoholic value)? filterByAlcoholic,
    TResult Function(_FilterByCategory value)? filterByCategory,
    TResult Function(_FilterByGlass value)? filterByGlass,
    TResult Function(_OnLoadMore value)? onLoadMore,
    TResult Function(_OnClear value)? onClear,
    TResult Function(_OnRetry value)? onRetry,
    required TResult orElse(),
  }) {
    if (filterByGlass != null) {
      return filterByGlass(this);
    }
    return orElse();
  }
}

abstract class _FilterByGlass implements CocktailEvent {
  const factory _FilterByGlass() = _$_FilterByGlass;
}

/// @nodoc
abstract class _$OnLoadMoreCopyWith<$Res> {
  factory _$OnLoadMoreCopyWith(
          _OnLoadMore value, $Res Function(_OnLoadMore) then) =
      __$OnLoadMoreCopyWithImpl<$Res>;
}

/// @nodoc
class __$OnLoadMoreCopyWithImpl<$Res> extends _$CocktailEventCopyWithImpl<$Res>
    implements _$OnLoadMoreCopyWith<$Res> {
  __$OnLoadMoreCopyWithImpl(
      _OnLoadMore _value, $Res Function(_OnLoadMore) _then)
      : super(_value, (v) => _then(v as _OnLoadMore));

  @override
  _OnLoadMore get _value => super._value as _OnLoadMore;
}

/// @nodoc

class _$_OnLoadMore implements _OnLoadMore {
  const _$_OnLoadMore();

  @override
  String toString() {
    return 'CocktailEvent.onLoadMore()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _OnLoadMore);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) searchByName,
    required TResult Function() filterByAlcoholic,
    required TResult Function() filterByCategory,
    required TResult Function() filterByGlass,
    required TResult Function() onLoadMore,
    required TResult Function() onClear,
    required TResult Function() onRetry,
  }) {
    return onLoadMore();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? searchByName,
    TResult Function()? filterByAlcoholic,
    TResult Function()? filterByCategory,
    TResult Function()? filterByGlass,
    TResult Function()? onLoadMore,
    TResult Function()? onClear,
    TResult Function()? onRetry,
    required TResult orElse(),
  }) {
    if (onLoadMore != null) {
      return onLoadMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchByName value) searchByName,
    required TResult Function(_FilterByAlcoholic value) filterByAlcoholic,
    required TResult Function(_FilterByCategory value) filterByCategory,
    required TResult Function(_FilterByGlass value) filterByGlass,
    required TResult Function(_OnLoadMore value) onLoadMore,
    required TResult Function(_OnClear value) onClear,
    required TResult Function(_OnRetry value) onRetry,
  }) {
    return onLoadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchByName value)? searchByName,
    TResult Function(_FilterByAlcoholic value)? filterByAlcoholic,
    TResult Function(_FilterByCategory value)? filterByCategory,
    TResult Function(_FilterByGlass value)? filterByGlass,
    TResult Function(_OnLoadMore value)? onLoadMore,
    TResult Function(_OnClear value)? onClear,
    TResult Function(_OnRetry value)? onRetry,
    required TResult orElse(),
  }) {
    if (onLoadMore != null) {
      return onLoadMore(this);
    }
    return orElse();
  }
}

abstract class _OnLoadMore implements CocktailEvent {
  const factory _OnLoadMore() = _$_OnLoadMore;
}

/// @nodoc
abstract class _$OnClearCopyWith<$Res> {
  factory _$OnClearCopyWith(_OnClear value, $Res Function(_OnClear) then) =
      __$OnClearCopyWithImpl<$Res>;
}

/// @nodoc
class __$OnClearCopyWithImpl<$Res> extends _$CocktailEventCopyWithImpl<$Res>
    implements _$OnClearCopyWith<$Res> {
  __$OnClearCopyWithImpl(_OnClear _value, $Res Function(_OnClear) _then)
      : super(_value, (v) => _then(v as _OnClear));

  @override
  _OnClear get _value => super._value as _OnClear;
}

/// @nodoc

class _$_OnClear implements _OnClear {
  const _$_OnClear();

  @override
  String toString() {
    return 'CocktailEvent.onClear()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _OnClear);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) searchByName,
    required TResult Function() filterByAlcoholic,
    required TResult Function() filterByCategory,
    required TResult Function() filterByGlass,
    required TResult Function() onLoadMore,
    required TResult Function() onClear,
    required TResult Function() onRetry,
  }) {
    return onClear();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? searchByName,
    TResult Function()? filterByAlcoholic,
    TResult Function()? filterByCategory,
    TResult Function()? filterByGlass,
    TResult Function()? onLoadMore,
    TResult Function()? onClear,
    TResult Function()? onRetry,
    required TResult orElse(),
  }) {
    if (onClear != null) {
      return onClear();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchByName value) searchByName,
    required TResult Function(_FilterByAlcoholic value) filterByAlcoholic,
    required TResult Function(_FilterByCategory value) filterByCategory,
    required TResult Function(_FilterByGlass value) filterByGlass,
    required TResult Function(_OnLoadMore value) onLoadMore,
    required TResult Function(_OnClear value) onClear,
    required TResult Function(_OnRetry value) onRetry,
  }) {
    return onClear(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchByName value)? searchByName,
    TResult Function(_FilterByAlcoholic value)? filterByAlcoholic,
    TResult Function(_FilterByCategory value)? filterByCategory,
    TResult Function(_FilterByGlass value)? filterByGlass,
    TResult Function(_OnLoadMore value)? onLoadMore,
    TResult Function(_OnClear value)? onClear,
    TResult Function(_OnRetry value)? onRetry,
    required TResult orElse(),
  }) {
    if (onClear != null) {
      return onClear(this);
    }
    return orElse();
  }
}

abstract class _OnClear implements CocktailEvent {
  const factory _OnClear() = _$_OnClear;
}

/// @nodoc
abstract class _$OnRetryCopyWith<$Res> {
  factory _$OnRetryCopyWith(_OnRetry value, $Res Function(_OnRetry) then) =
      __$OnRetryCopyWithImpl<$Res>;
}

/// @nodoc
class __$OnRetryCopyWithImpl<$Res> extends _$CocktailEventCopyWithImpl<$Res>
    implements _$OnRetryCopyWith<$Res> {
  __$OnRetryCopyWithImpl(_OnRetry _value, $Res Function(_OnRetry) _then)
      : super(_value, (v) => _then(v as _OnRetry));

  @override
  _OnRetry get _value => super._value as _OnRetry;
}

/// @nodoc

class _$_OnRetry implements _OnRetry {
  const _$_OnRetry();

  @override
  String toString() {
    return 'CocktailEvent.onRetry()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _OnRetry);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) searchByName,
    required TResult Function() filterByAlcoholic,
    required TResult Function() filterByCategory,
    required TResult Function() filterByGlass,
    required TResult Function() onLoadMore,
    required TResult Function() onClear,
    required TResult Function() onRetry,
  }) {
    return onRetry();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? searchByName,
    TResult Function()? filterByAlcoholic,
    TResult Function()? filterByCategory,
    TResult Function()? filterByGlass,
    TResult Function()? onLoadMore,
    TResult Function()? onClear,
    TResult Function()? onRetry,
    required TResult orElse(),
  }) {
    if (onRetry != null) {
      return onRetry();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchByName value) searchByName,
    required TResult Function(_FilterByAlcoholic value) filterByAlcoholic,
    required TResult Function(_FilterByCategory value) filterByCategory,
    required TResult Function(_FilterByGlass value) filterByGlass,
    required TResult Function(_OnLoadMore value) onLoadMore,
    required TResult Function(_OnClear value) onClear,
    required TResult Function(_OnRetry value) onRetry,
  }) {
    return onRetry(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchByName value)? searchByName,
    TResult Function(_FilterByAlcoholic value)? filterByAlcoholic,
    TResult Function(_FilterByCategory value)? filterByCategory,
    TResult Function(_FilterByGlass value)? filterByGlass,
    TResult Function(_OnLoadMore value)? onLoadMore,
    TResult Function(_OnClear value)? onClear,
    TResult Function(_OnRetry value)? onRetry,
    required TResult orElse(),
  }) {
    if (onRetry != null) {
      return onRetry(this);
    }
    return orElse();
  }
}

abstract class _OnRetry implements CocktailEvent {
  const factory _OnRetry() = _$_OnRetry;
}

/// @nodoc
class _$CocktailStateTearOff {
  const _$CocktailStateTearOff();

  _CocktailState call(
      {required FetchStatus status,
      required List<CocktailModel> items,
      required int page}) {
    return _CocktailState(
      status: status,
      items: items,
      page: page,
    );
  }
}

/// @nodoc
const $CocktailState = _$CocktailStateTearOff();

/// @nodoc
mixin _$CocktailState {
  FetchStatus get status => throw _privateConstructorUsedError;
  List<CocktailModel> get items => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CocktailStateCopyWith<CocktailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CocktailStateCopyWith<$Res> {
  factory $CocktailStateCopyWith(
          CocktailState value, $Res Function(CocktailState) then) =
      _$CocktailStateCopyWithImpl<$Res>;
  $Res call({FetchStatus status, List<CocktailModel> items, int page});

  $FetchStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$CocktailStateCopyWithImpl<$Res>
    implements $CocktailStateCopyWith<$Res> {
  _$CocktailStateCopyWithImpl(this._value, this._then);

  final CocktailState _value;
  // ignore: unused_field
  final $Res Function(CocktailState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? items = freezed,
    Object? page = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FetchStatus,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CocktailModel>,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$CocktailStateCopyWith<$Res>
    implements $CocktailStateCopyWith<$Res> {
  factory _$CocktailStateCopyWith(
          _CocktailState value, $Res Function(_CocktailState) then) =
      __$CocktailStateCopyWithImpl<$Res>;
  @override
  $Res call({FetchStatus status, List<CocktailModel> items, int page});

  @override
  $FetchStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$CocktailStateCopyWithImpl<$Res>
    extends _$CocktailStateCopyWithImpl<$Res>
    implements _$CocktailStateCopyWith<$Res> {
  __$CocktailStateCopyWithImpl(
      _CocktailState _value, $Res Function(_CocktailState) _then)
      : super(_value, (v) => _then(v as _CocktailState));

  @override
  _CocktailState get _value => super._value as _CocktailState;

  @override
  $Res call({
    Object? status = freezed,
    Object? items = freezed,
    Object? page = freezed,
  }) {
    return _then(_CocktailState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FetchStatus,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CocktailModel>,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CocktailState implements _CocktailState {
  const _$_CocktailState(
      {required this.status, required this.items, required this.page});

  @override
  final FetchStatus status;
  @override
  final List<CocktailModel> items;
  @override
  final int page;

  @override
  String toString() {
    return 'CocktailState(status: $status, items: $items, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CocktailState &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(page);

  @JsonKey(ignore: true)
  @override
  _$CocktailStateCopyWith<_CocktailState> get copyWith =>
      __$CocktailStateCopyWithImpl<_CocktailState>(this, _$identity);
}

abstract class _CocktailState implements CocktailState {
  const factory _CocktailState(
      {required FetchStatus status,
      required List<CocktailModel> items,
      required int page}) = _$_CocktailState;

  @override
  FetchStatus get status => throw _privateConstructorUsedError;
  @override
  List<CocktailModel> get items => throw _privateConstructorUsedError;
  @override
  int get page => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CocktailStateCopyWith<_CocktailState> get copyWith =>
      throw _privateConstructorUsedError;
}
