// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'habit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HabitTearOff {
  const _$HabitTearOff();

  _Habit call(
      {required UniqueId id,
      required HabitName name,
      required HabitDescription description,
      required Priority priority,
      required Type type,
      required Count count,
      required Frequency frequency,
      required DatesList datesList,
      required DateTime dateCreated}) {
    return _Habit(
      id: id,
      name: name,
      description: description,
      priority: priority,
      type: type,
      count: count,
      frequency: frequency,
      datesList: datesList,
      dateCreated: dateCreated,
    );
  }
}

/// @nodoc
const $Habit = _$HabitTearOff();

/// @nodoc
mixin _$Habit {
  UniqueId get id => throw _privateConstructorUsedError;
  HabitName get name => throw _privateConstructorUsedError;
  HabitDescription get description => throw _privateConstructorUsedError;
  Priority get priority => throw _privateConstructorUsedError;
  Type get type => throw _privateConstructorUsedError;
  Count get count => throw _privateConstructorUsedError;
  Frequency get frequency => throw _privateConstructorUsedError;
  DatesList get datesList => throw _privateConstructorUsedError;
  DateTime get dateCreated => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HabitCopyWith<Habit> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitCopyWith<$Res> {
  factory $HabitCopyWith(Habit value, $Res Function(Habit) then) =
      _$HabitCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      HabitName name,
      HabitDescription description,
      Priority priority,
      Type type,
      Count count,
      Frequency frequency,
      DatesList datesList,
      DateTime dateCreated});
}

/// @nodoc
class _$HabitCopyWithImpl<$Res> implements $HabitCopyWith<$Res> {
  _$HabitCopyWithImpl(this._value, this._then);

  final Habit _value;
  // ignore: unused_field
  final $Res Function(Habit) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? priority = freezed,
    Object? type = freezed,
    Object? count = freezed,
    Object? frequency = freezed,
    Object? datesList = freezed,
    Object? dateCreated = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as HabitName,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as HabitDescription,
      priority: priority == freezed
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as Priority,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Type,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as Count,
      frequency: frequency == freezed
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as Frequency,
      datesList: datesList == freezed
          ? _value.datesList
          : datesList // ignore: cast_nullable_to_non_nullable
              as DatesList,
      dateCreated: dateCreated == freezed
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$HabitCopyWith<$Res> implements $HabitCopyWith<$Res> {
  factory _$HabitCopyWith(_Habit value, $Res Function(_Habit) then) =
      __$HabitCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      HabitName name,
      HabitDescription description,
      Priority priority,
      Type type,
      Count count,
      Frequency frequency,
      DatesList datesList,
      DateTime dateCreated});
}

/// @nodoc
class __$HabitCopyWithImpl<$Res> extends _$HabitCopyWithImpl<$Res>
    implements _$HabitCopyWith<$Res> {
  __$HabitCopyWithImpl(_Habit _value, $Res Function(_Habit) _then)
      : super(_value, (v) => _then(v as _Habit));

  @override
  _Habit get _value => super._value as _Habit;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? priority = freezed,
    Object? type = freezed,
    Object? count = freezed,
    Object? frequency = freezed,
    Object? datesList = freezed,
    Object? dateCreated = freezed,
  }) {
    return _then(_Habit(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as HabitName,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as HabitDescription,
      priority: priority == freezed
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as Priority,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Type,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as Count,
      frequency: frequency == freezed
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as Frequency,
      datesList: datesList == freezed
          ? _value.datesList
          : datesList // ignore: cast_nullable_to_non_nullable
              as DatesList,
      dateCreated: dateCreated == freezed
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_Habit extends _Habit {
  const _$_Habit(
      {required this.id,
      required this.name,
      required this.description,
      required this.priority,
      required this.type,
      required this.count,
      required this.frequency,
      required this.datesList,
      required this.dateCreated})
      : super._();

  @override
  final UniqueId id;
  @override
  final HabitName name;
  @override
  final HabitDescription description;
  @override
  final Priority priority;
  @override
  final Type type;
  @override
  final Count count;
  @override
  final Frequency frequency;
  @override
  final DatesList datesList;
  @override
  final DateTime dateCreated;

  @override
  String toString() {
    return 'Habit(id: $id, name: $name, description: $description, priority: $priority, type: $type, count: $count, frequency: $frequency, datesList: $datesList, dateCreated: $dateCreated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Habit &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.priority, priority) ||
                const DeepCollectionEquality()
                    .equals(other.priority, priority)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.frequency, frequency) ||
                const DeepCollectionEquality()
                    .equals(other.frequency, frequency)) &&
            (identical(other.datesList, datesList) ||
                const DeepCollectionEquality()
                    .equals(other.datesList, datesList)) &&
            (identical(other.dateCreated, dateCreated) ||
                const DeepCollectionEquality()
                    .equals(other.dateCreated, dateCreated)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(priority) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(frequency) ^
      const DeepCollectionEquality().hash(datesList) ^
      const DeepCollectionEquality().hash(dateCreated);

  @JsonKey(ignore: true)
  @override
  _$HabitCopyWith<_Habit> get copyWith =>
      __$HabitCopyWithImpl<_Habit>(this, _$identity);
}

abstract class _Habit extends Habit {
  const factory _Habit(
      {required UniqueId id,
      required HabitName name,
      required HabitDescription description,
      required Priority priority,
      required Type type,
      required Count count,
      required Frequency frequency,
      required DatesList datesList,
      required DateTime dateCreated}) = _$_Habit;
  const _Habit._() : super._();

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  HabitName get name => throw _privateConstructorUsedError;
  @override
  HabitDescription get description => throw _privateConstructorUsedError;
  @override
  Priority get priority => throw _privateConstructorUsedError;
  @override
  Type get type => throw _privateConstructorUsedError;
  @override
  Count get count => throw _privateConstructorUsedError;
  @override
  Frequency get frequency => throw _privateConstructorUsedError;
  @override
  DatesList get datesList => throw _privateConstructorUsedError;
  @override
  DateTime get dateCreated => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HabitCopyWith<_Habit> get copyWith => throw _privateConstructorUsedError;
}
