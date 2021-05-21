// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'habit_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HabitWatcherEventTearOff {
  const _$HabitWatcherEventTearOff();

  _GetInitial getInitial() {
    return const _GetInitial();
  }

  _GetBad watchBad() {
    return const _GetBad();
  }

  _GetGood watchGood() {
    return const _GetGood();
  }

  _SortByDate sortByDate() {
    return const _SortByDate();
  }

  _HabitsReceived habitsReceived(
      Either<HabitFailure, KtList<Habit>> failureOrHabits) {
    return _HabitsReceived(
      failureOrHabits,
    );
  }
}

/// @nodoc
const $HabitWatcherEvent = _$HabitWatcherEventTearOff();

/// @nodoc
mixin _$HabitWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getInitial,
    required TResult Function() watchBad,
    required TResult Function() watchGood,
    required TResult Function() sortByDate,
    required TResult Function(
            Either<HabitFailure, KtList<Habit>> failureOrHabits)
        habitsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getInitial,
    TResult Function()? watchBad,
    TResult Function()? watchGood,
    TResult Function()? sortByDate,
    TResult Function(Either<HabitFailure, KtList<Habit>> failureOrHabits)?
        habitsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetInitial value) getInitial,
    required TResult Function(_GetBad value) watchBad,
    required TResult Function(_GetGood value) watchGood,
    required TResult Function(_SortByDate value) sortByDate,
    required TResult Function(_HabitsReceived value) habitsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetInitial value)? getInitial,
    TResult Function(_GetBad value)? watchBad,
    TResult Function(_GetGood value)? watchGood,
    TResult Function(_SortByDate value)? sortByDate,
    TResult Function(_HabitsReceived value)? habitsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitWatcherEventCopyWith<$Res> {
  factory $HabitWatcherEventCopyWith(
          HabitWatcherEvent value, $Res Function(HabitWatcherEvent) then) =
      _$HabitWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HabitWatcherEventCopyWithImpl<$Res>
    implements $HabitWatcherEventCopyWith<$Res> {
  _$HabitWatcherEventCopyWithImpl(this._value, this._then);

  final HabitWatcherEvent _value;

  // ignore: unused_field
  final $Res Function(HabitWatcherEvent) _then;
}

/// @nodoc
abstract class _$GetInitialCopyWith<$Res> {
  factory _$GetInitialCopyWith(
          _GetInitial value, $Res Function(_GetInitial) then) =
      __$GetInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetInitialCopyWithImpl<$Res>
    extends _$HabitWatcherEventCopyWithImpl<$Res>
    implements _$GetInitialCopyWith<$Res> {
  __$GetInitialCopyWithImpl(
      _GetInitial _value, $Res Function(_GetInitial) _then)
      : super(_value, (v) => _then(v as _GetInitial));

  @override
  _GetInitial get _value => super._value as _GetInitial;
}

/// @nodoc

class _$_GetInitial implements _GetInitial {
  const _$_GetInitial();

  @override
  String toString() {
    return 'HabitWatcherEvent.getInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getInitial,
    required TResult Function() watchBad,
    required TResult Function() watchGood,
    required TResult Function() sortByDate,
    required TResult Function(
            Either<HabitFailure, KtList<Habit>> failureOrHabits)
        habitsReceived,
  }) {
    return getInitial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getInitial,
    TResult Function()? watchBad,
    TResult Function()? watchGood,
    TResult Function()? sortByDate,
    TResult Function(Either<HabitFailure, KtList<Habit>> failureOrHabits)?
        habitsReceived,
    required TResult orElse(),
  }) {
    if (getInitial != null) {
      return getInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetInitial value) getInitial,
    required TResult Function(_GetBad value) watchBad,
    required TResult Function(_GetGood value) watchGood,
    required TResult Function(_SortByDate value) sortByDate,
    required TResult Function(_HabitsReceived value) habitsReceived,
  }) {
    return getInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetInitial value)? getInitial,
    TResult Function(_GetBad value)? watchBad,
    TResult Function(_GetGood value)? watchGood,
    TResult Function(_SortByDate value)? sortByDate,
    TResult Function(_HabitsReceived value)? habitsReceived,
    required TResult orElse(),
  }) {
    if (getInitial != null) {
      return getInitial(this);
    }
    return orElse();
  }
}

abstract class _GetInitial implements HabitWatcherEvent {
  const factory _GetInitial() = _$_GetInitial;
}

/// @nodoc
abstract class _$GetBadCopyWith<$Res> {
  factory _$GetBadCopyWith(_GetBad value, $Res Function(_GetBad) then) =
      __$GetBadCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetBadCopyWithImpl<$Res> extends _$HabitWatcherEventCopyWithImpl<$Res>
    implements _$GetBadCopyWith<$Res> {
  __$GetBadCopyWithImpl(_GetBad _value, $Res Function(_GetBad) _then)
      : super(_value, (v) => _then(v as _GetBad));

  @override
  _GetBad get _value => super._value as _GetBad;
}

/// @nodoc

class _$_GetBad implements _GetBad {
  const _$_GetBad();

  @override
  String toString() {
    return 'HabitWatcherEvent.watchBad()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetBad);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getInitial,
    required TResult Function() watchBad,
    required TResult Function() watchGood,
    required TResult Function() sortByDate,
    required TResult Function(
            Either<HabitFailure, KtList<Habit>> failureOrHabits)
        habitsReceived,
  }) {
    return watchBad();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getInitial,
    TResult Function()? watchBad,
    TResult Function()? watchGood,
    TResult Function()? sortByDate,
    TResult Function(Either<HabitFailure, KtList<Habit>> failureOrHabits)?
        habitsReceived,
    required TResult orElse(),
  }) {
    if (watchBad != null) {
      return watchBad();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetInitial value) getInitial,
    required TResult Function(_GetBad value) watchBad,
    required TResult Function(_GetGood value) watchGood,
    required TResult Function(_SortByDate value) sortByDate,
    required TResult Function(_HabitsReceived value) habitsReceived,
  }) {
    return watchBad(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetInitial value)? getInitial,
    TResult Function(_GetBad value)? watchBad,
    TResult Function(_GetGood value)? watchGood,
    TResult Function(_SortByDate value)? sortByDate,
    TResult Function(_HabitsReceived value)? habitsReceived,
    required TResult orElse(),
  }) {
    if (watchBad != null) {
      return watchBad(this);
    }
    return orElse();
  }
}

abstract class _GetBad implements HabitWatcherEvent {
  const factory _GetBad() = _$_GetBad;
}

/// @nodoc
abstract class _$GetGoodCopyWith<$Res> {
  factory _$GetGoodCopyWith(_GetGood value, $Res Function(_GetGood) then) =
      __$GetGoodCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetGoodCopyWithImpl<$Res> extends _$HabitWatcherEventCopyWithImpl<$Res>
    implements _$GetGoodCopyWith<$Res> {
  __$GetGoodCopyWithImpl(_GetGood _value, $Res Function(_GetGood) _then)
      : super(_value, (v) => _then(v as _GetGood));

  @override
  _GetGood get _value => super._value as _GetGood;
}

/// @nodoc

class _$_GetGood implements _GetGood {
  const _$_GetGood();

  @override
  String toString() {
    return 'HabitWatcherEvent.watchGood()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetGood);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getInitial,
    required TResult Function() watchBad,
    required TResult Function() watchGood,
    required TResult Function() sortByDate,
    required TResult Function(
            Either<HabitFailure, KtList<Habit>> failureOrHabits)
        habitsReceived,
  }) {
    return watchGood();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getInitial,
    TResult Function()? watchBad,
    TResult Function()? watchGood,
    TResult Function()? sortByDate,
    TResult Function(Either<HabitFailure, KtList<Habit>> failureOrHabits)?
        habitsReceived,
    required TResult orElse(),
  }) {
    if (watchGood != null) {
      return watchGood();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetInitial value) getInitial,
    required TResult Function(_GetBad value) watchBad,
    required TResult Function(_GetGood value) watchGood,
    required TResult Function(_SortByDate value) sortByDate,
    required TResult Function(_HabitsReceived value) habitsReceived,
  }) {
    return watchGood(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetInitial value)? getInitial,
    TResult Function(_GetBad value)? watchBad,
    TResult Function(_GetGood value)? watchGood,
    TResult Function(_SortByDate value)? sortByDate,
    TResult Function(_HabitsReceived value)? habitsReceived,
    required TResult orElse(),
  }) {
    if (watchGood != null) {
      return watchGood(this);
    }
    return orElse();
  }
}

abstract class _GetGood implements HabitWatcherEvent {
  const factory _GetGood() = _$_GetGood;
}

/// @nodoc
abstract class _$SortByDateCopyWith<$Res> {
  factory _$SortByDateCopyWith(
          _SortByDate value, $Res Function(_SortByDate) then) =
      __$SortByDateCopyWithImpl<$Res>;
}

/// @nodoc
class __$SortByDateCopyWithImpl<$Res>
    extends _$HabitWatcherEventCopyWithImpl<$Res>
    implements _$SortByDateCopyWith<$Res> {
  __$SortByDateCopyWithImpl(
      _SortByDate _value, $Res Function(_SortByDate) _then)
      : super(_value, (v) => _then(v as _SortByDate));

  @override
  _SortByDate get _value => super._value as _SortByDate;
}

/// @nodoc

class _$_SortByDate implements _SortByDate {
  const _$_SortByDate();

  @override
  String toString() {
    return 'HabitWatcherEvent.sortByDate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SortByDate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getInitial,
    required TResult Function() watchBad,
    required TResult Function() watchGood,
    required TResult Function() sortByDate,
    required TResult Function(
            Either<HabitFailure, KtList<Habit>> failureOrHabits)
        habitsReceived,
  }) {
    return sortByDate();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getInitial,
    TResult Function()? watchBad,
    TResult Function()? watchGood,
    TResult Function()? sortByDate,
    TResult Function(Either<HabitFailure, KtList<Habit>> failureOrHabits)?
        habitsReceived,
    required TResult orElse(),
  }) {
    if (sortByDate != null) {
      return sortByDate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetInitial value) getInitial,
    required TResult Function(_GetBad value) watchBad,
    required TResult Function(_GetGood value) watchGood,
    required TResult Function(_SortByDate value) sortByDate,
    required TResult Function(_HabitsReceived value) habitsReceived,
  }) {
    return sortByDate(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetInitial value)? getInitial,
    TResult Function(_GetBad value)? watchBad,
    TResult Function(_GetGood value)? watchGood,
    TResult Function(_SortByDate value)? sortByDate,
    TResult Function(_HabitsReceived value)? habitsReceived,
    required TResult orElse(),
  }) {
    if (sortByDate != null) {
      return sortByDate(this);
    }
    return orElse();
  }
}

abstract class _SortByDate implements HabitWatcherEvent {
  const factory _SortByDate() = _$_SortByDate;
}

/// @nodoc
abstract class _$HabitsReceivedCopyWith<$Res> {
  factory _$HabitsReceivedCopyWith(
          _HabitsReceived value, $Res Function(_HabitsReceived) then) =
      __$HabitsReceivedCopyWithImpl<$Res>;

  $Res call({Either<HabitFailure, KtList<Habit>> failureOrHabits});
}

/// @nodoc
class __$HabitsReceivedCopyWithImpl<$Res>
    extends _$HabitWatcherEventCopyWithImpl<$Res>
    implements _$HabitsReceivedCopyWith<$Res> {
  __$HabitsReceivedCopyWithImpl(
      _HabitsReceived _value, $Res Function(_HabitsReceived) _then)
      : super(_value, (v) => _then(v as _HabitsReceived));

  @override
  _HabitsReceived get _value => super._value as _HabitsReceived;

  @override
  $Res call({
    Object? failureOrHabits = freezed,
  }) {
    return _then(_HabitsReceived(
      failureOrHabits == freezed
          ? _value.failureOrHabits
          : failureOrHabits // ignore: cast_nullable_to_non_nullable
              as Either<HabitFailure, KtList<Habit>>,
    ));
  }
}

/// @nodoc

class _$_HabitsReceived implements _HabitsReceived {
  const _$_HabitsReceived(this.failureOrHabits);

  @override
  final Either<HabitFailure, KtList<Habit>> failureOrHabits;

  @override
  String toString() {
    return 'HabitWatcherEvent.habitsReceived(failureOrHabits: $failureOrHabits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HabitsReceived &&
            (identical(other.failureOrHabits, failureOrHabits) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrHabits, failureOrHabits)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrHabits);

  @JsonKey(ignore: true)
  @override
  _$HabitsReceivedCopyWith<_HabitsReceived> get copyWith =>
      __$HabitsReceivedCopyWithImpl<_HabitsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getInitial,
    required TResult Function() watchBad,
    required TResult Function() watchGood,
    required TResult Function() sortByDate,
    required TResult Function(
            Either<HabitFailure, KtList<Habit>> failureOrHabits)
        habitsReceived,
  }) {
    return habitsReceived(failureOrHabits);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getInitial,
    TResult Function()? watchBad,
    TResult Function()? watchGood,
    TResult Function()? sortByDate,
    TResult Function(Either<HabitFailure, KtList<Habit>> failureOrHabits)?
        habitsReceived,
    required TResult orElse(),
  }) {
    if (habitsReceived != null) {
      return habitsReceived(failureOrHabits);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetInitial value) getInitial,
    required TResult Function(_GetBad value) watchBad,
    required TResult Function(_GetGood value) watchGood,
    required TResult Function(_SortByDate value) sortByDate,
    required TResult Function(_HabitsReceived value) habitsReceived,
  }) {
    return habitsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetInitial value)? getInitial,
    TResult Function(_GetBad value)? watchBad,
    TResult Function(_GetGood value)? watchGood,
    TResult Function(_SortByDate value)? sortByDate,
    TResult Function(_HabitsReceived value)? habitsReceived,
    required TResult orElse(),
  }) {
    if (habitsReceived != null) {
      return habitsReceived(this);
    }
    return orElse();
  }
}

abstract class _HabitsReceived implements HabitWatcherEvent {
  const factory _HabitsReceived(
      Either<HabitFailure, KtList<Habit>> failureOrHabits) = _$_HabitsReceived;

  Either<HabitFailure, KtList<Habit>> get failureOrHabits =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$HabitsReceivedCopyWith<_HabitsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$HabitWatcherStateTearOff {
  const _$HabitWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(KtList<Habit> habits) {
    return _LoadSuccess(
      habits,
    );
  }

  _LoadFailure loadFailure(HabitFailure habitFailure) {
    return _LoadFailure(
      habitFailure,
    );
  }
}

/// @nodoc
const $HabitWatcherState = _$HabitWatcherStateTearOff();

/// @nodoc
mixin _$HabitWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Habit> habits) loadSuccess,
    required TResult Function(HabitFailure habitFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Habit> habits)? loadSuccess,
    TResult Function(HabitFailure habitFailure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitWatcherStateCopyWith<$Res> {
  factory $HabitWatcherStateCopyWith(
          HabitWatcherState value, $Res Function(HabitWatcherState) then) =
      _$HabitWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HabitWatcherStateCopyWithImpl<$Res>
    implements $HabitWatcherStateCopyWith<$Res> {
  _$HabitWatcherStateCopyWithImpl(this._value, this._then);

  final HabitWatcherState _value;
  // ignore: unused_field
  final $Res Function(HabitWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$HabitWatcherStateCopyWithImpl<$Res>
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
    return 'HabitWatcherState.initial()';
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
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Habit> habits) loadSuccess,
    required TResult Function(HabitFailure habitFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Habit> habits)? loadSuccess,
    TResult Function(HabitFailure habitFailure)? loadFailure,
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
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HabitWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$HabitWatcherStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'HabitWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Habit> habits) loadSuccess,
    required TResult Function(HabitFailure habitFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Habit> habits)? loadSuccess,
    TResult Function(HabitFailure habitFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements HabitWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Habit> habits});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$HabitWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? habits = freezed,
  }) {
    return _then(_LoadSuccess(
      habits == freezed
          ? _value.habits
          : habits // ignore: cast_nullable_to_non_nullable
              as KtList<Habit>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.habits);

  @override
  final KtList<Habit> habits;

  @override
  String toString() {
    return 'HabitWatcherState.loadSuccess(habits: $habits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.habits, habits) ||
                const DeepCollectionEquality().equals(other.habits, habits)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(habits);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Habit> habits) loadSuccess,
    required TResult Function(HabitFailure habitFailure) loadFailure,
  }) {
    return loadSuccess(habits);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Habit> habits)? loadSuccess,
    TResult Function(HabitFailure habitFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(habits);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements HabitWatcherState {
  const factory _LoadSuccess(KtList<Habit> habits) = _$_LoadSuccess;

  KtList<Habit> get habits => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({HabitFailure habitFailure});

  $HabitFailureCopyWith<$Res> get habitFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$HabitWatcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? habitFailure = freezed,
  }) {
    return _then(_LoadFailure(
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

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.habitFailure);

  @override
  final HabitFailure habitFailure;

  @override
  String toString() {
    return 'HabitWatcherState.loadFailure(habitFailure: $habitFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.habitFailure, habitFailure) ||
                const DeepCollectionEquality()
                    .equals(other.habitFailure, habitFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(habitFailure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Habit> habits) loadSuccess,
    required TResult Function(HabitFailure habitFailure) loadFailure,
  }) {
    return loadFailure(habitFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Habit> habits)? loadSuccess,
    TResult Function(HabitFailure habitFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(habitFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements HabitWatcherState {
  const factory _LoadFailure(HabitFailure habitFailure) = _$_LoadFailure;

  HabitFailure get habitFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
