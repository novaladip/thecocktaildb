// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'status_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FetchStatusTearOff {
  const _$FetchStatusTearOff();

  FetchStatusInitial initial() {
    return const FetchStatusInitial();
  }

  FetchStatusLoading loading() {
    return const FetchStatusLoading();
  }

  FetchStatusFailure failure() {
    return const FetchStatusFailure();
  }

  FetchStatusLoaded loaded() {
    return const FetchStatusLoaded();
  }
}

/// @nodoc
const $FetchStatus = _$FetchStatusTearOff();

/// @nodoc
mixin _$FetchStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() failure,
    required TResult Function() loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function()? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchStatusInitial value) initial,
    required TResult Function(FetchStatusLoading value) loading,
    required TResult Function(FetchStatusFailure value) failure,
    required TResult Function(FetchStatusLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchStatusInitial value)? initial,
    TResult Function(FetchStatusLoading value)? loading,
    TResult Function(FetchStatusFailure value)? failure,
    TResult Function(FetchStatusLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchStatusCopyWith<$Res> {
  factory $FetchStatusCopyWith(
          FetchStatus value, $Res Function(FetchStatus) then) =
      _$FetchStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchStatusCopyWithImpl<$Res> implements $FetchStatusCopyWith<$Res> {
  _$FetchStatusCopyWithImpl(this._value, this._then);

  final FetchStatus _value;
  // ignore: unused_field
  final $Res Function(FetchStatus) _then;
}

/// @nodoc
abstract class $FetchStatusInitialCopyWith<$Res> {
  factory $FetchStatusInitialCopyWith(
          FetchStatusInitial value, $Res Function(FetchStatusInitial) then) =
      _$FetchStatusInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchStatusInitialCopyWithImpl<$Res>
    extends _$FetchStatusCopyWithImpl<$Res>
    implements $FetchStatusInitialCopyWith<$Res> {
  _$FetchStatusInitialCopyWithImpl(
      FetchStatusInitial _value, $Res Function(FetchStatusInitial) _then)
      : super(_value, (v) => _then(v as FetchStatusInitial));

  @override
  FetchStatusInitial get _value => super._value as FetchStatusInitial;
}

/// @nodoc

class _$FetchStatusInitial implements FetchStatusInitial {
  const _$FetchStatusInitial();

  @override
  String toString() {
    return 'FetchStatus.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FetchStatusInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() failure,
    required TResult Function() loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function()? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchStatusInitial value) initial,
    required TResult Function(FetchStatusLoading value) loading,
    required TResult Function(FetchStatusFailure value) failure,
    required TResult Function(FetchStatusLoaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchStatusInitial value)? initial,
    TResult Function(FetchStatusLoading value)? loading,
    TResult Function(FetchStatusFailure value)? failure,
    TResult Function(FetchStatusLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class FetchStatusInitial implements FetchStatus {
  const factory FetchStatusInitial() = _$FetchStatusInitial;
}

/// @nodoc
abstract class $FetchStatusLoadingCopyWith<$Res> {
  factory $FetchStatusLoadingCopyWith(
          FetchStatusLoading value, $Res Function(FetchStatusLoading) then) =
      _$FetchStatusLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchStatusLoadingCopyWithImpl<$Res>
    extends _$FetchStatusCopyWithImpl<$Res>
    implements $FetchStatusLoadingCopyWith<$Res> {
  _$FetchStatusLoadingCopyWithImpl(
      FetchStatusLoading _value, $Res Function(FetchStatusLoading) _then)
      : super(_value, (v) => _then(v as FetchStatusLoading));

  @override
  FetchStatusLoading get _value => super._value as FetchStatusLoading;
}

/// @nodoc

class _$FetchStatusLoading implements FetchStatusLoading {
  const _$FetchStatusLoading();

  @override
  String toString() {
    return 'FetchStatus.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FetchStatusLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() failure,
    required TResult Function() loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function()? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchStatusInitial value) initial,
    required TResult Function(FetchStatusLoading value) loading,
    required TResult Function(FetchStatusFailure value) failure,
    required TResult Function(FetchStatusLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchStatusInitial value)? initial,
    TResult Function(FetchStatusLoading value)? loading,
    TResult Function(FetchStatusFailure value)? failure,
    TResult Function(FetchStatusLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FetchStatusLoading implements FetchStatus {
  const factory FetchStatusLoading() = _$FetchStatusLoading;
}

/// @nodoc
abstract class $FetchStatusFailureCopyWith<$Res> {
  factory $FetchStatusFailureCopyWith(
          FetchStatusFailure value, $Res Function(FetchStatusFailure) then) =
      _$FetchStatusFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchStatusFailureCopyWithImpl<$Res>
    extends _$FetchStatusCopyWithImpl<$Res>
    implements $FetchStatusFailureCopyWith<$Res> {
  _$FetchStatusFailureCopyWithImpl(
      FetchStatusFailure _value, $Res Function(FetchStatusFailure) _then)
      : super(_value, (v) => _then(v as FetchStatusFailure));

  @override
  FetchStatusFailure get _value => super._value as FetchStatusFailure;
}

/// @nodoc

class _$FetchStatusFailure implements FetchStatusFailure {
  const _$FetchStatusFailure();

  @override
  String toString() {
    return 'FetchStatus.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FetchStatusFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() failure,
    required TResult Function() loaded,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function()? loaded,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchStatusInitial value) initial,
    required TResult Function(FetchStatusLoading value) loading,
    required TResult Function(FetchStatusFailure value) failure,
    required TResult Function(FetchStatusLoaded value) loaded,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchStatusInitial value)? initial,
    TResult Function(FetchStatusLoading value)? loading,
    TResult Function(FetchStatusFailure value)? failure,
    TResult Function(FetchStatusLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class FetchStatusFailure implements FetchStatus {
  const factory FetchStatusFailure() = _$FetchStatusFailure;
}

/// @nodoc
abstract class $FetchStatusLoadedCopyWith<$Res> {
  factory $FetchStatusLoadedCopyWith(
          FetchStatusLoaded value, $Res Function(FetchStatusLoaded) then) =
      _$FetchStatusLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchStatusLoadedCopyWithImpl<$Res>
    extends _$FetchStatusCopyWithImpl<$Res>
    implements $FetchStatusLoadedCopyWith<$Res> {
  _$FetchStatusLoadedCopyWithImpl(
      FetchStatusLoaded _value, $Res Function(FetchStatusLoaded) _then)
      : super(_value, (v) => _then(v as FetchStatusLoaded));

  @override
  FetchStatusLoaded get _value => super._value as FetchStatusLoaded;
}

/// @nodoc

class _$FetchStatusLoaded implements FetchStatusLoaded {
  const _$FetchStatusLoaded();

  @override
  String toString() {
    return 'FetchStatus.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FetchStatusLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() failure,
    required TResult Function() loaded,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function()? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchStatusInitial value) initial,
    required TResult Function(FetchStatusLoading value) loading,
    required TResult Function(FetchStatusFailure value) failure,
    required TResult Function(FetchStatusLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchStatusInitial value)? initial,
    TResult Function(FetchStatusLoading value)? loading,
    TResult Function(FetchStatusFailure value)? failure,
    TResult Function(FetchStatusLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class FetchStatusLoaded implements FetchStatus {
  const factory FetchStatusLoaded() = _$FetchStatusLoaded;
}
