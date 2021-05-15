// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'habit_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HabitDto _$HabitDtoFromJson(Map<String, dynamic> json) {
  return _HabitDto.fromJson(json);
}

/// @nodoc
class _$HabitDtoTearOff {
  const _$HabitDtoTearOff();

  _HabitDto call(
      {required String title,
      required int count,
      required int date,
      required String description,
      @JsonKey(name: 'done_dates') List<int>? doneDates,
      required int frequency,
      required int priority,
      required int type,
      required String uid}) {
    return _HabitDto(
      title: title,
      count: count,
      date: date,
      description: description,
      doneDates: doneDates,
      frequency: frequency,
      priority: priority,
      type: type,
      uid: uid,
    );
  }

  HabitDto fromJson(Map<String, Object> json) {
    return HabitDto.fromJson(json);
  }
}

/// @nodoc
const $HabitDto = _$HabitDtoTearOff();

/// @nodoc
mixin _$HabitDto {
  String get title => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  int get date => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'done_dates')
  List<int>? get doneDates => throw _privateConstructorUsedError;
  int get frequency => throw _privateConstructorUsedError;
  int get priority => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HabitDtoCopyWith<HabitDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitDtoCopyWith<$Res> {
  factory $HabitDtoCopyWith(HabitDto value, $Res Function(HabitDto) then) =
      _$HabitDtoCopyWithImpl<$Res>;
  $Res call(
      {String title,
      int count,
      int date,
      String description,
      @JsonKey(name: 'done_dates') List<int>? doneDates,
      int frequency,
      int priority,
      int type,
      String uid});
}

/// @nodoc
class _$HabitDtoCopyWithImpl<$Res> implements $HabitDtoCopyWith<$Res> {
  _$HabitDtoCopyWithImpl(this._value, this._then);

  final HabitDto _value;
  // ignore: unused_field
  final $Res Function(HabitDto) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? count = freezed,
    Object? date = freezed,
    Object? description = freezed,
    Object? doneDates = freezed,
    Object? frequency = freezed,
    Object? priority = freezed,
    Object? type = freezed,
    Object? uid = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      doneDates: doneDates == freezed
          ? _value.doneDates
          : doneDates // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      frequency: frequency == freezed
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as int,
      priority: priority == freezed
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$HabitDtoCopyWith<$Res> implements $HabitDtoCopyWith<$Res> {
  factory _$HabitDtoCopyWith(_HabitDto value, $Res Function(_HabitDto) then) =
      __$HabitDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      int count,
      int date,
      String description,
      @JsonKey(name: 'done_dates') List<int>? doneDates,
      int frequency,
      int priority,
      int type,
      String uid});
}

/// @nodoc
class __$HabitDtoCopyWithImpl<$Res> extends _$HabitDtoCopyWithImpl<$Res>
    implements _$HabitDtoCopyWith<$Res> {
  __$HabitDtoCopyWithImpl(_HabitDto _value, $Res Function(_HabitDto) _then)
      : super(_value, (v) => _then(v as _HabitDto));

  @override
  _HabitDto get _value => super._value as _HabitDto;

  @override
  $Res call({
    Object? title = freezed,
    Object? count = freezed,
    Object? date = freezed,
    Object? description = freezed,
    Object? doneDates = freezed,
    Object? frequency = freezed,
    Object? priority = freezed,
    Object? type = freezed,
    Object? uid = freezed,
  }) {
    return _then(_HabitDto(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      doneDates: doneDates == freezed
          ? _value.doneDates
          : doneDates // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      frequency: frequency == freezed
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as int,
      priority: priority == freezed
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HabitDto extends _HabitDto {
  const _$_HabitDto(
      {required this.title,
      required this.count,
      required this.date,
      required this.description,
      @JsonKey(name: 'done_dates') this.doneDates,
      required this.frequency,
      required this.priority,
      required this.type,
      required this.uid})
      : super._();

  factory _$_HabitDto.fromJson(Map<String, dynamic> json) =>
      _$_$_HabitDtoFromJson(json);

  @override
  final String title;
  @override
  final int count;
  @override
  final int date;
  @override
  final String description;
  @override
  @JsonKey(name: 'done_dates')
  final List<int>? doneDates;
  @override
  final int frequency;
  @override
  final int priority;
  @override
  final int type;
  @override
  final String uid;

  @override
  String toString() {
    return 'HabitDto(title: $title, count: $count, date: $date, description: $description, doneDates: $doneDates, frequency: $frequency, priority: $priority, type: $type, uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HabitDto &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.doneDates, doneDates) ||
                const DeepCollectionEquality()
                    .equals(other.doneDates, doneDates)) &&
            (identical(other.frequency, frequency) ||
                const DeepCollectionEquality()
                    .equals(other.frequency, frequency)) &&
            (identical(other.priority, priority) ||
                const DeepCollectionEquality()
                    .equals(other.priority, priority)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(doneDates) ^
      const DeepCollectionEquality().hash(frequency) ^
      const DeepCollectionEquality().hash(priority) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(uid);

  @JsonKey(ignore: true)
  @override
  _$HabitDtoCopyWith<_HabitDto> get copyWith =>
      __$HabitDtoCopyWithImpl<_HabitDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_HabitDtoToJson(this);
  }
}

abstract class _HabitDto extends HabitDto {
  const factory _HabitDto(
      {required String title,
      required int count,
      required int date,
      required String description,
      @JsonKey(name: 'done_dates') List<int>? doneDates,
      required int frequency,
      required int priority,
      required int type,
      required String uid}) = _$_HabitDto;
  const _HabitDto._() : super._();

  factory _HabitDto.fromJson(Map<String, dynamic> json) = _$_HabitDto.fromJson;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  int get count => throw _privateConstructorUsedError;
  @override
  int get date => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'done_dates')
  List<int>? get doneDates => throw _privateConstructorUsedError;
  @override
  int get frequency => throw _privateConstructorUsedError;
  @override
  int get priority => throw _privateConstructorUsedError;
  @override
  int get type => throw _privateConstructorUsedError;
  @override
  String get uid => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HabitDtoCopyWith<_HabitDto> get copyWith =>
      throw _privateConstructorUsedError;
}
