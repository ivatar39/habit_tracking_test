// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'habit_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HabitActorEventTearOff {
  const _$HabitActorEventTearOff();

  _Deleted deleted(Habit habit) {
    return _Deleted(
      habit,
    );
  }

  _Completed completed(Habit habit) {
    return _Completed(
      habit,
    );
  }
}

/// @nodoc
const $HabitActorEvent = _$HabitActorEventTearOff();

/// @nodoc
mixin _$HabitActorEvent {
  Habit get habit => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Habit habit) deleted,
    required TResult Function(Habit habit) completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Habit habit)? deleted,
    TResult Function(Habit habit)? completed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_Completed value) completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Deleted value)? deleted,
    TResult Function(_Completed value)? completed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HabitActorEventCopyWith<HabitActorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitActorEventCopyWith<$Res> {
  factory $HabitActorEventCopyWith(
          HabitActorEvent value, $Res Function(HabitActorEvent) then) =
      _$HabitActorEventCopyWithImpl<$Res>;
  $Res call({Habit habit});

  $HabitCopyWith<$Res> get habit;
}

/// @nodoc
class _$HabitActorEventCopyWithImpl<$Res>
    implements $HabitActorEventCopyWith<$Res> {
  _$HabitActorEventCopyWithImpl(this._value, this._then);

  final HabitActorEvent _value;
  // ignore: unused_field
  final $Res Function(HabitActorEvent) _then;

  @override
  $Res call({
    Object? habit = freezed,
  }) {
    return _then(_value.copyWith(
      habit: habit == freezed
          ? _value.habit
          : habit // ignore: cast_nullable_to_non_nullable
              as Habit,
    ));
  }

  @override
  $HabitCopyWith<$Res> get habit {
    return $HabitCopyWith<$Res>(_value.habit, (value) {
      return _then(_value.copyWith(habit: value));
    });
  }
}

/// @nodoc
abstract class _$DeletedCopyWith<$Res>
    implements $HabitActorEventCopyWith<$Res> {
  factory _$DeletedCopyWith(_Deleted value, $Res Function(_Deleted) then) =
      __$DeletedCopyWithImpl<$Res>;
  @override
  $Res call({Habit habit});

  @override
  $HabitCopyWith<$Res> get habit;
}

/// @nodoc
class __$DeletedCopyWithImpl<$Res> extends _$HabitActorEventCopyWithImpl<$Res>
    implements _$DeletedCopyWith<$Res> {
  __$DeletedCopyWithImpl(_Deleted _value, $Res Function(_Deleted) _then)
      : super(_value, (v) => _then(v as _Deleted));

  @override
  _Deleted get _value => super._value as _Deleted;

  @override
  $Res call({
    Object? habit = freezed,
  }) {
    return _then(_Deleted(
      habit == freezed
          ? _value.habit
          : habit // ignore: cast_nullable_to_non_nullable
              as Habit,
    ));
  }
}

/// @nodoc

class _$_Deleted implements _Deleted {
  const _$_Deleted(this.habit);

  @override
  final Habit habit;

  @override
  String toString() {
    return 'HabitActorEvent.deleted(habit: $habit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Deleted &&
            (identical(other.habit, habit) ||
                const DeepCollectionEquality().equals(other.habit, habit)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(habit);

  @JsonKey(ignore: true)
  @override
  _$DeletedCopyWith<_Deleted> get copyWith =>
      __$DeletedCopyWithImpl<_Deleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Habit habit) deleted,
    required TResult Function(Habit habit) completed,
  }) {
    return deleted(habit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Habit habit)? deleted,
    TResult Function(Habit habit)? completed,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(habit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_Completed value) completed,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Deleted value)? deleted,
    TResult Function(_Completed value)? completed,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements HabitActorEvent {
  const factory _Deleted(Habit habit) = _$_Deleted;

  @override
  Habit get habit => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DeletedCopyWith<_Deleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CompletedCopyWith<$Res>
    implements $HabitActorEventCopyWith<$Res> {
  factory _$CompletedCopyWith(
          _Completed value, $Res Function(_Completed) then) =
      __$CompletedCopyWithImpl<$Res>;
  @override
  $Res call({Habit habit});

  @override
  $HabitCopyWith<$Res> get habit;
}

/// @nodoc
class __$CompletedCopyWithImpl<$Res> extends _$HabitActorEventCopyWithImpl<$Res>
    implements _$CompletedCopyWith<$Res> {
  __$CompletedCopyWithImpl(_Completed _value, $Res Function(_Completed) _then)
      : super(_value, (v) => _then(v as _Completed));

  @override
  _Completed get _value => super._value as _Completed;

  @override
  $Res call({
    Object? habit = freezed,
  }) {
    return _then(_Completed(
      habit == freezed
          ? _value.habit
          : habit // ignore: cast_nullable_to_non_nullable
              as Habit,
    ));
  }
}

/// @nodoc

class _$_Completed implements _Completed {
  const _$_Completed(this.habit);

  @override
  final Habit habit;

  @override
  String toString() {
    return 'HabitActorEvent.completed(habit: $habit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Completed &&
            (identical(other.habit, habit) ||
                const DeepCollectionEquality().equals(other.habit, habit)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(habit);

  @JsonKey(ignore: true)
  @override
  _$CompletedCopyWith<_Completed> get copyWith =>
      __$CompletedCopyWithImpl<_Completed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Habit habit) deleted,
    required TResult Function(Habit habit) completed,
  }) {
    return completed(habit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Habit habit)? deleted,
    TResult Function(Habit habit)? completed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(habit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_Completed value) completed,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Deleted value)? deleted,
    TResult Function(_Completed value)? completed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class _Completed implements HabitActorEvent {
  const factory _Completed(Habit habit) = _$_Completed;

  @override
  Habit get habit => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CompletedCopyWith<_Completed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$HabitActorStateTearOff {
  const _$HabitActorStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ActionProgress actionProgress() {
    return const _ActionProgress();
  }

  _DeleteFailure deleteFailure(HabitFailure habitFailure) {
    return _DeleteFailure(
      habitFailure,
    );
  }

  _DeleteSuccess deleteSuccess() {
    return const _DeleteSuccess();
  }

  _CompleteFailure completeFailure(HabitFailure habitFailure) {
    return _CompleteFailure(
      habitFailure,
    );
  }

  _CompleteSuccess completeSuccess(
      {required bool isGood, required String completionBark}) {
    return _CompleteSuccess(
      isGood: isGood,
      completionBark: completionBark,
    );
  }
}

/// @nodoc
const $HabitActorState = _$HabitActorStateTearOff();

/// @nodoc
mixin _$HabitActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionProgress,
    required TResult Function(HabitFailure habitFailure) deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(HabitFailure habitFailure) completeFailure,
    required TResult Function(bool isGood, String completionBark)
        completeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionProgress,
    TResult Function(HabitFailure habitFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(HabitFailure habitFailure)? completeFailure,
    TResult Function(bool isGood, String completionBark)? completeSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionProgress value) actionProgress,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_CompleteFailure value) completeFailure,
    required TResult Function(_CompleteSuccess value) completeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionProgress value)? actionProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_CompleteFailure value)? completeFailure,
    TResult Function(_CompleteSuccess value)? completeSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitActorStateCopyWith<$Res> {
  factory $HabitActorStateCopyWith(
          HabitActorState value, $Res Function(HabitActorState) then) =
      _$HabitActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HabitActorStateCopyWithImpl<$Res>
    implements $HabitActorStateCopyWith<$Res> {
  _$HabitActorStateCopyWithImpl(this._value, this._then);

  final HabitActorState _value;
  // ignore: unused_field
  final $Res Function(HabitActorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$HabitActorStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'HabitActorState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionProgress,
    required TResult Function(HabitFailure habitFailure) deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(HabitFailure habitFailure) completeFailure,
    required TResult Function(bool isGood, String completionBark)
        completeSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionProgress,
    TResult Function(HabitFailure habitFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(HabitFailure habitFailure)? completeFailure,
    TResult Function(bool isGood, String completionBark)? completeSuccess,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionProgress value) actionProgress,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_CompleteFailure value) completeFailure,
    required TResult Function(_CompleteSuccess value) completeSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionProgress value)? actionProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_CompleteFailure value)? completeFailure,
    TResult Function(_CompleteSuccess value)? completeSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HabitActorState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ActionProgressCopyWith<$Res> {
  factory _$ActionProgressCopyWith(
          _ActionProgress value, $Res Function(_ActionProgress) then) =
      __$ActionProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$ActionProgressCopyWithImpl<$Res>
    extends _$HabitActorStateCopyWithImpl<$Res>
    implements _$ActionProgressCopyWith<$Res> {
  __$ActionProgressCopyWithImpl(
      _ActionProgress _value, $Res Function(_ActionProgress) _then)
      : super(_value, (v) => _then(v as _ActionProgress));

  @override
  _ActionProgress get _value => super._value as _ActionProgress;
}

/// @nodoc

class _$_ActionProgress implements _ActionProgress {
  const _$_ActionProgress();

  @override
  String toString() {
    return 'HabitActorState.actionProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ActionProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionProgress,
    required TResult Function(HabitFailure habitFailure) deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(HabitFailure habitFailure) completeFailure,
    required TResult Function(bool isGood, String completionBark)
        completeSuccess,
  }) {
    return actionProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionProgress,
    TResult Function(HabitFailure habitFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(HabitFailure habitFailure)? completeFailure,
    TResult Function(bool isGood, String completionBark)? completeSuccess,
    required TResult orElse(),
  }) {
    if (actionProgress != null) {
      return actionProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionProgress value) actionProgress,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_CompleteFailure value) completeFailure,
    required TResult Function(_CompleteSuccess value) completeSuccess,
  }) {
    return actionProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionProgress value)? actionProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_CompleteFailure value)? completeFailure,
    TResult Function(_CompleteSuccess value)? completeSuccess,
    required TResult orElse(),
  }) {
    if (actionProgress != null) {
      return actionProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionProgress implements HabitActorState {
  const factory _ActionProgress() = _$_ActionProgress;
}

/// @nodoc
abstract class _$DeleteFailureCopyWith<$Res> {
  factory _$DeleteFailureCopyWith(
          _DeleteFailure value, $Res Function(_DeleteFailure) then) =
      __$DeleteFailureCopyWithImpl<$Res>;
  $Res call({HabitFailure habitFailure});

  $HabitFailureCopyWith<$Res> get habitFailure;
}

/// @nodoc
class __$DeleteFailureCopyWithImpl<$Res>
    extends _$HabitActorStateCopyWithImpl<$Res>
    implements _$DeleteFailureCopyWith<$Res> {
  __$DeleteFailureCopyWithImpl(
      _DeleteFailure _value, $Res Function(_DeleteFailure) _then)
      : super(_value, (v) => _then(v as _DeleteFailure));

  @override
  _DeleteFailure get _value => super._value as _DeleteFailure;

  @override
  $Res call({
    Object? habitFailure = freezed,
  }) {
    return _then(_DeleteFailure(
      habitFailure == freezed
          ? _value.habitFailure
          : habitFailure // ignore: cast_nullable_to_non_nullable
              as HabitFailure,
    ));
  }

  @override
  $HabitFailureCopyWith<$Res> get habitFailure {
    return $HabitFailureCopyWith<$Res>(_value.habitFailure, (value) {
      return _then(_value.copyWith(habitFailure: value));
    });
  }
}

/// @nodoc

class _$_DeleteFailure implements _DeleteFailure {
  const _$_DeleteFailure(this.habitFailure);

  @override
  final HabitFailure habitFailure;

  @override
  String toString() {
    return 'HabitActorState.deleteFailure(habitFailure: $habitFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteFailure &&
            (identical(other.habitFailure, habitFailure) ||
                const DeepCollectionEquality()
                    .equals(other.habitFailure, habitFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(habitFailure);

  @JsonKey(ignore: true)
  @override
  _$DeleteFailureCopyWith<_DeleteFailure> get copyWith =>
      __$DeleteFailureCopyWithImpl<_DeleteFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionProgress,
    required TResult Function(HabitFailure habitFailure) deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(HabitFailure habitFailure) completeFailure,
    required TResult Function(bool isGood, String completionBark)
        completeSuccess,
  }) {
    return deleteFailure(habitFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionProgress,
    TResult Function(HabitFailure habitFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(HabitFailure habitFailure)? completeFailure,
    TResult Function(bool isGood, String completionBark)? completeSuccess,
    required TResult orElse(),
  }) {
    if (deleteFailure != null) {
      return deleteFailure(habitFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionProgress value) actionProgress,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_CompleteFailure value) completeFailure,
    required TResult Function(_CompleteSuccess value) completeSuccess,
  }) {
    return deleteFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionProgress value)? actionProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_CompleteFailure value)? completeFailure,
    TResult Function(_CompleteSuccess value)? completeSuccess,
    required TResult orElse(),
  }) {
    if (deleteFailure != null) {
      return deleteFailure(this);
    }
    return orElse();
  }
}

abstract class _DeleteFailure implements HabitActorState {
  const factory _DeleteFailure(HabitFailure habitFailure) = _$_DeleteFailure;

  HabitFailure get habitFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeleteFailureCopyWith<_DeleteFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteSuccessCopyWith<$Res> {
  factory _$DeleteSuccessCopyWith(
          _DeleteSuccess value, $Res Function(_DeleteSuccess) then) =
      __$DeleteSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeleteSuccessCopyWithImpl<$Res>
    extends _$HabitActorStateCopyWithImpl<$Res>
    implements _$DeleteSuccessCopyWith<$Res> {
  __$DeleteSuccessCopyWithImpl(
      _DeleteSuccess _value, $Res Function(_DeleteSuccess) _then)
      : super(_value, (v) => _then(v as _DeleteSuccess));

  @override
  _DeleteSuccess get _value => super._value as _DeleteSuccess;
}

/// @nodoc

class _$_DeleteSuccess implements _DeleteSuccess {
  const _$_DeleteSuccess();

  @override
  String toString() {
    return 'HabitActorState.deleteSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DeleteSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionProgress,
    required TResult Function(HabitFailure habitFailure) deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(HabitFailure habitFailure) completeFailure,
    required TResult Function(bool isGood, String completionBark)
        completeSuccess,
  }) {
    return deleteSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionProgress,
    TResult Function(HabitFailure habitFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(HabitFailure habitFailure)? completeFailure,
    TResult Function(bool isGood, String completionBark)? completeSuccess,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionProgress value) actionProgress,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_CompleteFailure value) completeFailure,
    required TResult Function(_CompleteSuccess value) completeSuccess,
  }) {
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionProgress value)? actionProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_CompleteFailure value)? completeFailure,
    TResult Function(_CompleteSuccess value)? completeSuccess,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeleteSuccess implements HabitActorState {
  const factory _DeleteSuccess() = _$_DeleteSuccess;
}

/// @nodoc
abstract class _$CompleteFailureCopyWith<$Res> {
  factory _$CompleteFailureCopyWith(
          _CompleteFailure value, $Res Function(_CompleteFailure) then) =
      __$CompleteFailureCopyWithImpl<$Res>;
  $Res call({HabitFailure habitFailure});

  $HabitFailureCopyWith<$Res> get habitFailure;
}

/// @nodoc
class __$CompleteFailureCopyWithImpl<$Res>
    extends _$HabitActorStateCopyWithImpl<$Res>
    implements _$CompleteFailureCopyWith<$Res> {
  __$CompleteFailureCopyWithImpl(
      _CompleteFailure _value, $Res Function(_CompleteFailure) _then)
      : super(_value, (v) => _then(v as _CompleteFailure));

  @override
  _CompleteFailure get _value => super._value as _CompleteFailure;

  @override
  $Res call({
    Object? habitFailure = freezed,
  }) {
    return _then(_CompleteFailure(
      habitFailure == freezed
          ? _value.habitFailure
          : habitFailure // ignore: cast_nullable_to_non_nullable
              as HabitFailure,
    ));
  }

  @override
  $HabitFailureCopyWith<$Res> get habitFailure {
    return $HabitFailureCopyWith<$Res>(_value.habitFailure, (value) {
      return _then(_value.copyWith(habitFailure: value));
    });
  }
}

/// @nodoc

class _$_CompleteFailure implements _CompleteFailure {
  const _$_CompleteFailure(this.habitFailure);

  @override
  final HabitFailure habitFailure;

  @override
  String toString() {
    return 'HabitActorState.completeFailure(habitFailure: $habitFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CompleteFailure &&
            (identical(other.habitFailure, habitFailure) ||
                const DeepCollectionEquality()
                    .equals(other.habitFailure, habitFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(habitFailure);

  @JsonKey(ignore: true)
  @override
  _$CompleteFailureCopyWith<_CompleteFailure> get copyWith =>
      __$CompleteFailureCopyWithImpl<_CompleteFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionProgress,
    required TResult Function(HabitFailure habitFailure) deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(HabitFailure habitFailure) completeFailure,
    required TResult Function(bool isGood, String completionBark)
        completeSuccess,
  }) {
    return completeFailure(habitFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionProgress,
    TResult Function(HabitFailure habitFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(HabitFailure habitFailure)? completeFailure,
    TResult Function(bool isGood, String completionBark)? completeSuccess,
    required TResult orElse(),
  }) {
    if (completeFailure != null) {
      return completeFailure(habitFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionProgress value) actionProgress,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_CompleteFailure value) completeFailure,
    required TResult Function(_CompleteSuccess value) completeSuccess,
  }) {
    return completeFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionProgress value)? actionProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_CompleteFailure value)? completeFailure,
    TResult Function(_CompleteSuccess value)? completeSuccess,
    required TResult orElse(),
  }) {
    if (completeFailure != null) {
      return completeFailure(this);
    }
    return orElse();
  }
}

abstract class _CompleteFailure implements HabitActorState {
  const factory _CompleteFailure(HabitFailure habitFailure) =
      _$_CompleteFailure;

  HabitFailure get habitFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CompleteFailureCopyWith<_CompleteFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CompleteSuccessCopyWith<$Res> {
  factory _$CompleteSuccessCopyWith(
          _CompleteSuccess value, $Res Function(_CompleteSuccess) then) =
      __$CompleteSuccessCopyWithImpl<$Res>;
  $Res call({bool isGood, String completionBark});
}

/// @nodoc
class __$CompleteSuccessCopyWithImpl<$Res>
    extends _$HabitActorStateCopyWithImpl<$Res>
    implements _$CompleteSuccessCopyWith<$Res> {
  __$CompleteSuccessCopyWithImpl(
      _CompleteSuccess _value, $Res Function(_CompleteSuccess) _then)
      : super(_value, (v) => _then(v as _CompleteSuccess));

  @override
  _CompleteSuccess get _value => super._value as _CompleteSuccess;

  @override
  $Res call({
    Object? isGood = freezed,
    Object? completionBark = freezed,
  }) {
    return _then(_CompleteSuccess(
      isGood: isGood == freezed
          ? _value.isGood
          : isGood // ignore: cast_nullable_to_non_nullable
              as bool,
      completionBark: completionBark == freezed
          ? _value.completionBark
          : completionBark // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CompleteSuccess implements _CompleteSuccess {
  const _$_CompleteSuccess(
      {required this.isGood, required this.completionBark});

  @override
  final bool isGood;
  @override
  final String completionBark;

  @override
  String toString() {
    return 'HabitActorState.completeSuccess(isGood: $isGood, completionBark: $completionBark)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CompleteSuccess &&
            (identical(other.isGood, isGood) ||
                const DeepCollectionEquality().equals(other.isGood, isGood)) &&
            (identical(other.completionBark, completionBark) ||
                const DeepCollectionEquality()
                    .equals(other.completionBark, completionBark)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isGood) ^
      const DeepCollectionEquality().hash(completionBark);

  @JsonKey(ignore: true)
  @override
  _$CompleteSuccessCopyWith<_CompleteSuccess> get copyWith =>
      __$CompleteSuccessCopyWithImpl<_CompleteSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionProgress,
    required TResult Function(HabitFailure habitFailure) deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(HabitFailure habitFailure) completeFailure,
    required TResult Function(bool isGood, String completionBark)
        completeSuccess,
  }) {
    return completeSuccess(isGood, completionBark);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionProgress,
    TResult Function(HabitFailure habitFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(HabitFailure habitFailure)? completeFailure,
    TResult Function(bool isGood, String completionBark)? completeSuccess,
    required TResult orElse(),
  }) {
    if (completeSuccess != null) {
      return completeSuccess(isGood, completionBark);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionProgress value) actionProgress,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_CompleteFailure value) completeFailure,
    required TResult Function(_CompleteSuccess value) completeSuccess,
  }) {
    return completeSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionProgress value)? actionProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_CompleteFailure value)? completeFailure,
    TResult Function(_CompleteSuccess value)? completeSuccess,
    required TResult orElse(),
  }) {
    if (completeSuccess != null) {
      return completeSuccess(this);
    }
    return orElse();
  }
}

abstract class _CompleteSuccess implements HabitActorState {
  const factory _CompleteSuccess(
      {required bool isGood,
      required String completionBark}) = _$_CompleteSuccess;

  bool get isGood => throw _privateConstructorUsedError;
  String get completionBark => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CompleteSuccessCopyWith<_CompleteSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
