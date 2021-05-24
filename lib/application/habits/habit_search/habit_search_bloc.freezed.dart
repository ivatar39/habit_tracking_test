// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'habit_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HabitSearchEventTearOff {
  const _$HabitSearchEventTearOff();

  SearchHabitsByQuery searchHabitsByQuery(String query) {
    return SearchHabitsByQuery(
      query,
    );
  }
}

/// @nodoc
const $HabitSearchEvent = _$HabitSearchEventTearOff();

/// @nodoc
mixin _$HabitSearchEvent {
  String get query => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchHabitsByQuery,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchHabitsByQuery,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchHabitsByQuery value) searchHabitsByQuery,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchHabitsByQuery value)? searchHabitsByQuery,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HabitSearchEventCopyWith<HabitSearchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitSearchEventCopyWith<$Res> {
  factory $HabitSearchEventCopyWith(
          HabitSearchEvent value, $Res Function(HabitSearchEvent) then) =
      _$HabitSearchEventCopyWithImpl<$Res>;

  $Res call({String query});
}

/// @nodoc
class _$HabitSearchEventCopyWithImpl<$Res>
    implements $HabitSearchEventCopyWith<$Res> {
  _$HabitSearchEventCopyWithImpl(this._value, this._then);

  final HabitSearchEvent _value;

  // ignore: unused_field
  final $Res Function(HabitSearchEvent) _then;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_value.copyWith(
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $SearchHabitsByQueryCopyWith<$Res>
    implements $HabitSearchEventCopyWith<$Res> {
  factory $SearchHabitsByQueryCopyWith(
          SearchHabitsByQuery value, $Res Function(SearchHabitsByQuery) then) =
      _$SearchHabitsByQueryCopyWithImpl<$Res>;

  @override
  $Res call({String query});
}

/// @nodoc
class _$SearchHabitsByQueryCopyWithImpl<$Res>
    extends _$HabitSearchEventCopyWithImpl<$Res>
    implements $SearchHabitsByQueryCopyWith<$Res> {
  _$SearchHabitsByQueryCopyWithImpl(
      SearchHabitsByQuery _value, $Res Function(SearchHabitsByQuery) _then)
      : super(_value, (v) => _then(v as SearchHabitsByQuery));

  @override
  SearchHabitsByQuery get _value => super._value as SearchHabitsByQuery;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(SearchHabitsByQuery(
      query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchHabitsByQuery implements SearchHabitsByQuery {
  const _$SearchHabitsByQuery(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'HabitSearchEvent.searchHabitsByQuery(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchHabitsByQuery &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(query);

  @JsonKey(ignore: true)
  @override
  $SearchHabitsByQueryCopyWith<SearchHabitsByQuery> get copyWith =>
      _$SearchHabitsByQueryCopyWithImpl<SearchHabitsByQuery>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchHabitsByQuery,
  }) {
    return searchHabitsByQuery(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchHabitsByQuery,
    required TResult orElse(),
  }) {
    if (searchHabitsByQuery != null) {
      return searchHabitsByQuery(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchHabitsByQuery value) searchHabitsByQuery,
  }) {
    return searchHabitsByQuery(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchHabitsByQuery value)? searchHabitsByQuery,
    required TResult orElse(),
  }) {
    if (searchHabitsByQuery != null) {
      return searchHabitsByQuery(this);
    }
    return orElse();
  }
}

abstract class SearchHabitsByQuery implements HabitSearchEvent {
  const factory SearchHabitsByQuery(String query) = _$SearchHabitsByQuery;

  @override
  String get query => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  $SearchHabitsByQueryCopyWith<SearchHabitsByQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$HabitSearchStateTearOff {
  const _$HabitSearchStateTearOff();

  Initial initial() {
    return const Initial();
  }

  SearchInProgress searchInProgress() {
    return const SearchInProgress();
  }

  SearchFailure searchFailure(HabitFailure failure) {
    return SearchFailure(
      failure,
    );
  }

  SearchCompleted searchCompleted(KtList<Habit> habits) {
    return SearchCompleted(
      habits,
    );
  }
}

/// @nodoc
const $HabitSearchState = _$HabitSearchStateTearOff();

/// @nodoc
mixin _$HabitSearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchInProgress,
    required TResult Function(HabitFailure failure) searchFailure,
    required TResult Function(KtList<Habit> habits) searchCompleted,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchInProgress,
    TResult Function(HabitFailure failure)? searchFailure,
    TResult Function(KtList<Habit> habits)? searchCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SearchInProgress value) searchInProgress,
    required TResult Function(SearchFailure value) searchFailure,
    required TResult Function(SearchCompleted value) searchCompleted,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SearchInProgress value)? searchInProgress,
    TResult Function(SearchFailure value)? searchFailure,
    TResult Function(SearchCompleted value)? searchCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitSearchStateCopyWith<$Res> {
  factory $HabitSearchStateCopyWith(
          HabitSearchState value, $Res Function(HabitSearchState) then) =
      _$HabitSearchStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HabitSearchStateCopyWithImpl<$Res>
    implements $HabitSearchStateCopyWith<$Res> {
  _$HabitSearchStateCopyWithImpl(this._value, this._then);

  final HabitSearchState _value;

  // ignore: unused_field
  final $Res Function(HabitSearchState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$HabitSearchStateCopyWithImpl<$Res>
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
    return 'HabitSearchState.initial()';
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
    required TResult Function() searchInProgress,
    required TResult Function(HabitFailure failure) searchFailure,
    required TResult Function(KtList<Habit> habits) searchCompleted,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchInProgress,
    TResult Function(HabitFailure failure)? searchFailure,
    TResult Function(KtList<Habit> habits)? searchCompleted,
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
    required TResult Function(SearchInProgress value) searchInProgress,
    required TResult Function(SearchFailure value) searchFailure,
    required TResult Function(SearchCompleted value) searchCompleted,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SearchInProgress value)? searchInProgress,
    TResult Function(SearchFailure value)? searchFailure,
    TResult Function(SearchCompleted value)? searchCompleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements HabitSearchState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $SearchInProgressCopyWith<$Res> {
  factory $SearchInProgressCopyWith(
          SearchInProgress value, $Res Function(SearchInProgress) then) =
      _$SearchInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchInProgressCopyWithImpl<$Res>
    extends _$HabitSearchStateCopyWithImpl<$Res>
    implements $SearchInProgressCopyWith<$Res> {
  _$SearchInProgressCopyWithImpl(
      SearchInProgress _value, $Res Function(SearchInProgress) _then)
      : super(_value, (v) => _then(v as SearchInProgress));

  @override
  SearchInProgress get _value => super._value as SearchInProgress;
}

/// @nodoc

class _$SearchInProgress implements SearchInProgress {
  const _$SearchInProgress();

  @override
  String toString() {
    return 'HabitSearchState.searchInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SearchInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchInProgress,
    required TResult Function(HabitFailure failure) searchFailure,
    required TResult Function(KtList<Habit> habits) searchCompleted,
  }) {
    return searchInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchInProgress,
    TResult Function(HabitFailure failure)? searchFailure,
    TResult Function(KtList<Habit> habits)? searchCompleted,
    required TResult orElse(),
  }) {
    if (searchInProgress != null) {
      return searchInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SearchInProgress value) searchInProgress,
    required TResult Function(SearchFailure value) searchFailure,
    required TResult Function(SearchCompleted value) searchCompleted,
  }) {
    return searchInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SearchInProgress value)? searchInProgress,
    TResult Function(SearchFailure value)? searchFailure,
    TResult Function(SearchCompleted value)? searchCompleted,
    required TResult orElse(),
  }) {
    if (searchInProgress != null) {
      return searchInProgress(this);
    }
    return orElse();
  }
}

abstract class SearchInProgress implements HabitSearchState {
  const factory SearchInProgress() = _$SearchInProgress;
}

/// @nodoc
abstract class $SearchFailureCopyWith<$Res> {
  factory $SearchFailureCopyWith(
          SearchFailure value, $Res Function(SearchFailure) then) =
      _$SearchFailureCopyWithImpl<$Res>;

  $Res call({HabitFailure failure});

  $HabitFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$SearchFailureCopyWithImpl<$Res>
    extends _$HabitSearchStateCopyWithImpl<$Res>
    implements $SearchFailureCopyWith<$Res> {
  _$SearchFailureCopyWithImpl(
      SearchFailure _value, $Res Function(SearchFailure) _then)
      : super(_value, (v) => _then(v as SearchFailure));

  @override
  SearchFailure get _value => super._value as SearchFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(SearchFailure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as HabitFailure,
    ));
  }

  @override
  $HabitFailureCopyWith<$Res> get failure {
    return $HabitFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$SearchFailure implements SearchFailure {
  const _$SearchFailure(this.failure);

  @override
  final HabitFailure failure;

  @override
  String toString() {
    return 'HabitSearchState.searchFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  $SearchFailureCopyWith<SearchFailure> get copyWith =>
      _$SearchFailureCopyWithImpl<SearchFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchInProgress,
    required TResult Function(HabitFailure failure) searchFailure,
    required TResult Function(KtList<Habit> habits) searchCompleted,
  }) {
    return searchFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchInProgress,
    TResult Function(HabitFailure failure)? searchFailure,
    TResult Function(KtList<Habit> habits)? searchCompleted,
    required TResult orElse(),
  }) {
    if (searchFailure != null) {
      return searchFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SearchInProgress value) searchInProgress,
    required TResult Function(SearchFailure value) searchFailure,
    required TResult Function(SearchCompleted value) searchCompleted,
  }) {
    return searchFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SearchInProgress value)? searchInProgress,
    TResult Function(SearchFailure value)? searchFailure,
    TResult Function(SearchCompleted value)? searchCompleted,
    required TResult orElse(),
  }) {
    if (searchFailure != null) {
      return searchFailure(this);
    }
    return orElse();
  }
}

abstract class SearchFailure implements HabitSearchState {
  const factory SearchFailure(HabitFailure failure) = _$SearchFailure;

  HabitFailure get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchFailureCopyWith<SearchFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchCompletedCopyWith<$Res> {
  factory $SearchCompletedCopyWith(
          SearchCompleted value, $Res Function(SearchCompleted) then) =
      _$SearchCompletedCopyWithImpl<$Res>;

  $Res call({KtList<Habit> habits});
}

/// @nodoc
class _$SearchCompletedCopyWithImpl<$Res>
    extends _$HabitSearchStateCopyWithImpl<$Res>
    implements $SearchCompletedCopyWith<$Res> {
  _$SearchCompletedCopyWithImpl(
      SearchCompleted _value, $Res Function(SearchCompleted) _then)
      : super(_value, (v) => _then(v as SearchCompleted));

  @override
  SearchCompleted get _value => super._value as SearchCompleted;

  @override
  $Res call({
    Object? habits = freezed,
  }) {
    return _then(SearchCompleted(
      habits == freezed
          ? _value.habits
          : habits // ignore: cast_nullable_to_non_nullable
              as KtList<Habit>,
    ));
  }
}

/// @nodoc

class _$SearchCompleted implements SearchCompleted {
  const _$SearchCompleted(this.habits);

  @override
  final KtList<Habit> habits;

  @override
  String toString() {
    return 'HabitSearchState.searchCompleted(habits: $habits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchCompleted &&
            (identical(other.habits, habits) ||
                const DeepCollectionEquality().equals(other.habits, habits)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(habits);

  @JsonKey(ignore: true)
  @override
  $SearchCompletedCopyWith<SearchCompleted> get copyWith =>
      _$SearchCompletedCopyWithImpl<SearchCompleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchInProgress,
    required TResult Function(HabitFailure failure) searchFailure,
    required TResult Function(KtList<Habit> habits) searchCompleted,
  }) {
    return searchCompleted(habits);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchInProgress,
    TResult Function(HabitFailure failure)? searchFailure,
    TResult Function(KtList<Habit> habits)? searchCompleted,
    required TResult orElse(),
  }) {
    if (searchCompleted != null) {
      return searchCompleted(habits);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SearchInProgress value) searchInProgress,
    required TResult Function(SearchFailure value) searchFailure,
    required TResult Function(SearchCompleted value) searchCompleted,
  }) {
    return searchCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SearchInProgress value)? searchInProgress,
    TResult Function(SearchFailure value)? searchFailure,
    TResult Function(SearchCompleted value)? searchCompleted,
    required TResult orElse(),
  }) {
    if (searchCompleted != null) {
      return searchCompleted(this);
    }
    return orElse();
  }
}

abstract class SearchCompleted implements HabitSearchState {
  const factory SearchCompleted(KtList<Habit> habits) = _$SearchCompleted;

  KtList<Habit> get habits => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchCompletedCopyWith<SearchCompleted> get copyWith =>
      throw _privateConstructorUsedError;
}
