// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'main_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MainEventTearOff {
  const _$MainEventTearOff();

  AppOpened appOpened() {
    return const AppOpened();
  }
}

/// @nodoc
const $MainEvent = _$MainEventTearOff();

/// @nodoc
mixin _$MainEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appOpened,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppOpened value) appOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppOpened value)? appOpened,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainEventCopyWith<$Res> {
  factory $MainEventCopyWith(MainEvent value, $Res Function(MainEvent) then) =
      _$MainEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MainEventCopyWithImpl<$Res> implements $MainEventCopyWith<$Res> {
  _$MainEventCopyWithImpl(this._value, this._then);

  final MainEvent _value;
  // ignore: unused_field
  final $Res Function(MainEvent) _then;
}

/// @nodoc
abstract class $AppOpenedCopyWith<$Res> {
  factory $AppOpenedCopyWith(AppOpened value, $Res Function(AppOpened) then) =
      _$AppOpenedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppOpenedCopyWithImpl<$Res> extends _$MainEventCopyWithImpl<$Res>
    implements $AppOpenedCopyWith<$Res> {
  _$AppOpenedCopyWithImpl(AppOpened _value, $Res Function(AppOpened) _then)
      : super(_value, (v) => _then(v as AppOpened));

  @override
  AppOpened get _value => super._value as AppOpened;
}

/// @nodoc

class _$AppOpened implements AppOpened {
  const _$AppOpened();

  @override
  String toString() {
    return 'MainEvent.appOpened()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AppOpened);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appOpened,
  }) {
    return appOpened();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appOpened,
    required TResult orElse(),
  }) {
    if (appOpened != null) {
      return appOpened();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppOpened value) appOpened,
  }) {
    return appOpened(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppOpened value)? appOpened,
    required TResult orElse(),
  }) {
    if (appOpened != null) {
      return appOpened(this);
    }
    return orElse();
  }
}

abstract class AppOpened implements MainEvent {
  const factory AppOpened() = _$AppOpened;
}

/// @nodoc
class _$MainStateTearOff {
  const _$MainStateTearOff();

  Initial initial() {
    return const Initial();
  }

  AppLoaded appLoaded() {
    return const AppLoaded();
  }
}

/// @nodoc
const $MainState = _$MainStateTearOff();

/// @nodoc
mixin _$MainState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() appLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? appLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(AppLoaded value) appLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AppLoaded value)? appLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res> implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

  final MainState _value;
  // ignore: unused_field
  final $Res Function(MainState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$MainStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'MainState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() appLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? appLoaded,
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
    required TResult Function(Initial value) initial,
    required TResult Function(AppLoaded value) appLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AppLoaded value)? appLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements MainState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $AppLoadedCopyWith<$Res> {
  factory $AppLoadedCopyWith(AppLoaded value, $Res Function(AppLoaded) then) =
      _$AppLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppLoadedCopyWithImpl<$Res> extends _$MainStateCopyWithImpl<$Res>
    implements $AppLoadedCopyWith<$Res> {
  _$AppLoadedCopyWithImpl(AppLoaded _value, $Res Function(AppLoaded) _then)
      : super(_value, (v) => _then(v as AppLoaded));

  @override
  AppLoaded get _value => super._value as AppLoaded;
}

/// @nodoc

class _$AppLoaded implements AppLoaded {
  const _$AppLoaded();

  @override
  String toString() {
    return 'MainState.appLoaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AppLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() appLoaded,
  }) {
    return appLoaded();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? appLoaded,
    required TResult orElse(),
  }) {
    if (appLoaded != null) {
      return appLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(AppLoaded value) appLoaded,
  }) {
    return appLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AppLoaded value)? appLoaded,
    required TResult orElse(),
  }) {
    if (appLoaded != null) {
      return appLoaded(this);
    }
    return orElse();
  }
}

abstract class AppLoaded implements MainState {
  const factory AppLoaded() = _$AppLoaded;
}
