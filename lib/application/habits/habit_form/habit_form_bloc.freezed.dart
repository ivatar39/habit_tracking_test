// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'habit_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HabitFormEventTearOff {
  const _$HabitFormEventTearOff();

  _Initialized initialized(Option<Habit> initialHabitOption) {
    return _Initialized(
      initialHabitOption,
    );
  }

  _NameChanged nameChanged(String nameStr) {
    return _NameChanged(
      nameStr,
    );
  }

  _DescriptionChanged descriptionChanged(String descriptionStr) {
    return _DescriptionChanged(
      descriptionStr,
    );
  }

  _PriorityChanged priorityChanged(String priorityStr) {
    return _PriorityChanged(
      priorityStr,
    );
  }

  _TypeChanged typeChanged(String typeStr) {
    return _TypeChanged(
      typeStr,
    );
  }

  _CountChanged countChanged(String countStr) {
    return _CountChanged(
      countStr,
    );
  }

  _FrequencyChanged frequencyChanged(String frequencyStr) {
    return _FrequencyChanged(
      frequencyStr,
    );
  }

  _Saved saved() {
    return const _Saved();
  }
}

/// @nodoc
const $HabitFormEvent = _$HabitFormEventTearOff();

/// @nodoc
mixin _$HabitFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Habit> initialHabitOption) initialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String descriptionStr) descriptionChanged,
    required TResult Function(String priorityStr) priorityChanged,
    required TResult Function(String typeStr) typeChanged,
    required TResult Function(String countStr) countChanged,
    required TResult Function(String frequencyStr) frequencyChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Habit> initialHabitOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(String priorityStr)? priorityChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function(String countStr)? countChanged,
    TResult Function(String frequencyStr)? frequencyChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_PriorityChanged value) priorityChanged,
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_CountChanged value) countChanged,
    required TResult Function(_FrequencyChanged value) frequencyChanged,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_PriorityChanged value)? priorityChanged,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_CountChanged value)? countChanged,
    TResult Function(_FrequencyChanged value)? frequencyChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitFormEventCopyWith<$Res> {
  factory $HabitFormEventCopyWith(
          HabitFormEvent value, $Res Function(HabitFormEvent) then) =
      _$HabitFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HabitFormEventCopyWithImpl<$Res>
    implements $HabitFormEventCopyWith<$Res> {
  _$HabitFormEventCopyWithImpl(this._value, this._then);

  final HabitFormEvent _value;
  // ignore: unused_field
  final $Res Function(HabitFormEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Habit> initialHabitOption});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$HabitFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? initialHabitOption = freezed,
  }) {
    return _then(_Initialized(
      initialHabitOption == freezed
          ? _value.initialHabitOption
          : initialHabitOption // ignore: cast_nullable_to_non_nullable
              as Option<Habit>,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialHabitOption);

  @override
  final Option<Habit> initialHabitOption;

  @override
  String toString() {
    return 'HabitFormEvent.initialized(initialHabitOption: $initialHabitOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initialHabitOption, initialHabitOption) ||
                const DeepCollectionEquality()
                    .equals(other.initialHabitOption, initialHabitOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialHabitOption);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Habit> initialHabitOption) initialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String descriptionStr) descriptionChanged,
    required TResult Function(String priorityStr) priorityChanged,
    required TResult Function(String typeStr) typeChanged,
    required TResult Function(String countStr) countChanged,
    required TResult Function(String frequencyStr) frequencyChanged,
    required TResult Function() saved,
  }) {
    return initialized(initialHabitOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Habit> initialHabitOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(String priorityStr)? priorityChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function(String countStr)? countChanged,
    TResult Function(String frequencyStr)? frequencyChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(initialHabitOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_PriorityChanged value) priorityChanged,
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_CountChanged value) countChanged,
    required TResult Function(_FrequencyChanged value) frequencyChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_PriorityChanged value)? priorityChanged,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_CountChanged value)? countChanged,
    TResult Function(_FrequencyChanged value)? frequencyChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements HabitFormEvent {
  const factory _Initialized(Option<Habit> initialHabitOption) = _$_Initialized;

  Option<Habit> get initialHabitOption => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NameChangedCopyWith<$Res> {
  factory _$NameChangedCopyWith(
          _NameChanged value, $Res Function(_NameChanged) then) =
      __$NameChangedCopyWithImpl<$Res>;
  $Res call({String nameStr});
}

/// @nodoc
class __$NameChangedCopyWithImpl<$Res>
    extends _$HabitFormEventCopyWithImpl<$Res>
    implements _$NameChangedCopyWith<$Res> {
  __$NameChangedCopyWithImpl(
      _NameChanged _value, $Res Function(_NameChanged) _then)
      : super(_value, (v) => _then(v as _NameChanged));

  @override
  _NameChanged get _value => super._value as _NameChanged;

  @override
  $Res call({
    Object? nameStr = freezed,
  }) {
    return _then(_NameChanged(
      nameStr == freezed
          ? _value.nameStr
          : nameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NameChanged implements _NameChanged {
  const _$_NameChanged(this.nameStr);

  @override
  final String nameStr;

  @override
  String toString() {
    return 'HabitFormEvent.nameChanged(nameStr: $nameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NameChanged &&
            (identical(other.nameStr, nameStr) ||
                const DeepCollectionEquality().equals(other.nameStr, nameStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nameStr);

  @JsonKey(ignore: true)
  @override
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
      __$NameChangedCopyWithImpl<_NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Habit> initialHabitOption) initialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String descriptionStr) descriptionChanged,
    required TResult Function(String priorityStr) priorityChanged,
    required TResult Function(String typeStr) typeChanged,
    required TResult Function(String countStr) countChanged,
    required TResult Function(String frequencyStr) frequencyChanged,
    required TResult Function() saved,
  }) {
    return nameChanged(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Habit> initialHabitOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(String priorityStr)? priorityChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function(String countStr)? countChanged,
    TResult Function(String frequencyStr)? frequencyChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(nameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_PriorityChanged value) priorityChanged,
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_CountChanged value) countChanged,
    required TResult Function(_FrequencyChanged value) frequencyChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_PriorityChanged value)? priorityChanged,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_CountChanged value)? countChanged,
    TResult Function(_FrequencyChanged value)? frequencyChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements HabitFormEvent {
  const factory _NameChanged(String nameStr) = _$_NameChanged;

  String get nameStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DescriptionChangedCopyWith<$Res> {
  factory _$DescriptionChangedCopyWith(
          _DescriptionChanged value, $Res Function(_DescriptionChanged) then) =
      __$DescriptionChangedCopyWithImpl<$Res>;
  $Res call({String descriptionStr});
}

/// @nodoc
class __$DescriptionChangedCopyWithImpl<$Res>
    extends _$HabitFormEventCopyWithImpl<$Res>
    implements _$DescriptionChangedCopyWith<$Res> {
  __$DescriptionChangedCopyWithImpl(
      _DescriptionChanged _value, $Res Function(_DescriptionChanged) _then)
      : super(_value, (v) => _then(v as _DescriptionChanged));

  @override
  _DescriptionChanged get _value => super._value as _DescriptionChanged;

  @override
  $Res call({
    Object? descriptionStr = freezed,
  }) {
    return _then(_DescriptionChanged(
      descriptionStr == freezed
          ? _value.descriptionStr
          : descriptionStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DescriptionChanged implements _DescriptionChanged {
  const _$_DescriptionChanged(this.descriptionStr);

  @override
  final String descriptionStr;

  @override
  String toString() {
    return 'HabitFormEvent.descriptionChanged(descriptionStr: $descriptionStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DescriptionChanged &&
            (identical(other.descriptionStr, descriptionStr) ||
                const DeepCollectionEquality()
                    .equals(other.descriptionStr, descriptionStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(descriptionStr);

  @JsonKey(ignore: true)
  @override
  _$DescriptionChangedCopyWith<_DescriptionChanged> get copyWith =>
      __$DescriptionChangedCopyWithImpl<_DescriptionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Habit> initialHabitOption) initialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String descriptionStr) descriptionChanged,
    required TResult Function(String priorityStr) priorityChanged,
    required TResult Function(String typeStr) typeChanged,
    required TResult Function(String countStr) countChanged,
    required TResult Function(String frequencyStr) frequencyChanged,
    required TResult Function() saved,
  }) {
    return descriptionChanged(descriptionStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Habit> initialHabitOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(String priorityStr)? priorityChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function(String countStr)? countChanged,
    TResult Function(String frequencyStr)? frequencyChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(descriptionStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_PriorityChanged value) priorityChanged,
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_CountChanged value) countChanged,
    required TResult Function(_FrequencyChanged value) frequencyChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return descriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_PriorityChanged value)? priorityChanged,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_CountChanged value)? countChanged,
    TResult Function(_FrequencyChanged value)? frequencyChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(this);
    }
    return orElse();
  }
}

abstract class _DescriptionChanged implements HabitFormEvent {
  const factory _DescriptionChanged(String descriptionStr) =
      _$_DescriptionChanged;

  String get descriptionStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DescriptionChangedCopyWith<_DescriptionChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PriorityChangedCopyWith<$Res> {
  factory _$PriorityChangedCopyWith(
          _PriorityChanged value, $Res Function(_PriorityChanged) then) =
      __$PriorityChangedCopyWithImpl<$Res>;
  $Res call({String priorityStr});
}

/// @nodoc
class __$PriorityChangedCopyWithImpl<$Res>
    extends _$HabitFormEventCopyWithImpl<$Res>
    implements _$PriorityChangedCopyWith<$Res> {
  __$PriorityChangedCopyWithImpl(
      _PriorityChanged _value, $Res Function(_PriorityChanged) _then)
      : super(_value, (v) => _then(v as _PriorityChanged));

  @override
  _PriorityChanged get _value => super._value as _PriorityChanged;

  @override
  $Res call({
    Object? priorityStr = freezed,
  }) {
    return _then(_PriorityChanged(
      priorityStr == freezed
          ? _value.priorityStr
          : priorityStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PriorityChanged implements _PriorityChanged {
  const _$_PriorityChanged(this.priorityStr);

  @override
  final String priorityStr;

  @override
  String toString() {
    return 'HabitFormEvent.priorityChanged(priorityStr: $priorityStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PriorityChanged &&
            (identical(other.priorityStr, priorityStr) ||
                const DeepCollectionEquality()
                    .equals(other.priorityStr, priorityStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(priorityStr);

  @JsonKey(ignore: true)
  @override
  _$PriorityChangedCopyWith<_PriorityChanged> get copyWith =>
      __$PriorityChangedCopyWithImpl<_PriorityChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Habit> initialHabitOption) initialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String descriptionStr) descriptionChanged,
    required TResult Function(String priorityStr) priorityChanged,
    required TResult Function(String typeStr) typeChanged,
    required TResult Function(String countStr) countChanged,
    required TResult Function(String frequencyStr) frequencyChanged,
    required TResult Function() saved,
  }) {
    return priorityChanged(priorityStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Habit> initialHabitOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(String priorityStr)? priorityChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function(String countStr)? countChanged,
    TResult Function(String frequencyStr)? frequencyChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (priorityChanged != null) {
      return priorityChanged(priorityStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_PriorityChanged value) priorityChanged,
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_CountChanged value) countChanged,
    required TResult Function(_FrequencyChanged value) frequencyChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return priorityChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_PriorityChanged value)? priorityChanged,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_CountChanged value)? countChanged,
    TResult Function(_FrequencyChanged value)? frequencyChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (priorityChanged != null) {
      return priorityChanged(this);
    }
    return orElse();
  }
}

abstract class _PriorityChanged implements HabitFormEvent {
  const factory _PriorityChanged(String priorityStr) = _$_PriorityChanged;

  String get priorityStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PriorityChangedCopyWith<_PriorityChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TypeChangedCopyWith<$Res> {
  factory _$TypeChangedCopyWith(
          _TypeChanged value, $Res Function(_TypeChanged) then) =
      __$TypeChangedCopyWithImpl<$Res>;
  $Res call({String typeStr});
}

/// @nodoc
class __$TypeChangedCopyWithImpl<$Res>
    extends _$HabitFormEventCopyWithImpl<$Res>
    implements _$TypeChangedCopyWith<$Res> {
  __$TypeChangedCopyWithImpl(
      _TypeChanged _value, $Res Function(_TypeChanged) _then)
      : super(_value, (v) => _then(v as _TypeChanged));

  @override
  _TypeChanged get _value => super._value as _TypeChanged;

  @override
  $Res call({
    Object? typeStr = freezed,
  }) {
    return _then(_TypeChanged(
      typeStr == freezed
          ? _value.typeStr
          : typeStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TypeChanged implements _TypeChanged {
  const _$_TypeChanged(this.typeStr);

  @override
  final String typeStr;

  @override
  String toString() {
    return 'HabitFormEvent.typeChanged(typeStr: $typeStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TypeChanged &&
            (identical(other.typeStr, typeStr) ||
                const DeepCollectionEquality().equals(other.typeStr, typeStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(typeStr);

  @JsonKey(ignore: true)
  @override
  _$TypeChangedCopyWith<_TypeChanged> get copyWith =>
      __$TypeChangedCopyWithImpl<_TypeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Habit> initialHabitOption) initialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String descriptionStr) descriptionChanged,
    required TResult Function(String priorityStr) priorityChanged,
    required TResult Function(String typeStr) typeChanged,
    required TResult Function(String countStr) countChanged,
    required TResult Function(String frequencyStr) frequencyChanged,
    required TResult Function() saved,
  }) {
    return typeChanged(typeStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Habit> initialHabitOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(String priorityStr)? priorityChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function(String countStr)? countChanged,
    TResult Function(String frequencyStr)? frequencyChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (typeChanged != null) {
      return typeChanged(typeStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_PriorityChanged value) priorityChanged,
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_CountChanged value) countChanged,
    required TResult Function(_FrequencyChanged value) frequencyChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return typeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_PriorityChanged value)? priorityChanged,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_CountChanged value)? countChanged,
    TResult Function(_FrequencyChanged value)? frequencyChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (typeChanged != null) {
      return typeChanged(this);
    }
    return orElse();
  }
}

abstract class _TypeChanged implements HabitFormEvent {
  const factory _TypeChanged(String typeStr) = _$_TypeChanged;

  String get typeStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TypeChangedCopyWith<_TypeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CountChangedCopyWith<$Res> {
  factory _$CountChangedCopyWith(
          _CountChanged value, $Res Function(_CountChanged) then) =
      __$CountChangedCopyWithImpl<$Res>;
  $Res call({String countStr});
}

/// @nodoc
class __$CountChangedCopyWithImpl<$Res>
    extends _$HabitFormEventCopyWithImpl<$Res>
    implements _$CountChangedCopyWith<$Res> {
  __$CountChangedCopyWithImpl(
      _CountChanged _value, $Res Function(_CountChanged) _then)
      : super(_value, (v) => _then(v as _CountChanged));

  @override
  _CountChanged get _value => super._value as _CountChanged;

  @override
  $Res call({
    Object? countStr = freezed,
  }) {
    return _then(_CountChanged(
      countStr == freezed
          ? _value.countStr
          : countStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CountChanged implements _CountChanged {
  const _$_CountChanged(this.countStr);

  @override
  final String countStr;

  @override
  String toString() {
    return 'HabitFormEvent.countChanged(countStr: $countStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CountChanged &&
            (identical(other.countStr, countStr) ||
                const DeepCollectionEquality()
                    .equals(other.countStr, countStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(countStr);

  @JsonKey(ignore: true)
  @override
  _$CountChangedCopyWith<_CountChanged> get copyWith =>
      __$CountChangedCopyWithImpl<_CountChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Habit> initialHabitOption) initialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String descriptionStr) descriptionChanged,
    required TResult Function(String priorityStr) priorityChanged,
    required TResult Function(String typeStr) typeChanged,
    required TResult Function(String countStr) countChanged,
    required TResult Function(String frequencyStr) frequencyChanged,
    required TResult Function() saved,
  }) {
    return countChanged(countStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Habit> initialHabitOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(String priorityStr)? priorityChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function(String countStr)? countChanged,
    TResult Function(String frequencyStr)? frequencyChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (countChanged != null) {
      return countChanged(countStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_PriorityChanged value) priorityChanged,
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_CountChanged value) countChanged,
    required TResult Function(_FrequencyChanged value) frequencyChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return countChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_PriorityChanged value)? priorityChanged,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_CountChanged value)? countChanged,
    TResult Function(_FrequencyChanged value)? frequencyChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (countChanged != null) {
      return countChanged(this);
    }
    return orElse();
  }
}

abstract class _CountChanged implements HabitFormEvent {
  const factory _CountChanged(String countStr) = _$_CountChanged;

  String get countStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CountChangedCopyWith<_CountChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FrequencyChangedCopyWith<$Res> {
  factory _$FrequencyChangedCopyWith(
          _FrequencyChanged value, $Res Function(_FrequencyChanged) then) =
      __$FrequencyChangedCopyWithImpl<$Res>;
  $Res call({String frequencyStr});
}

/// @nodoc
class __$FrequencyChangedCopyWithImpl<$Res>
    extends _$HabitFormEventCopyWithImpl<$Res>
    implements _$FrequencyChangedCopyWith<$Res> {
  __$FrequencyChangedCopyWithImpl(
      _FrequencyChanged _value, $Res Function(_FrequencyChanged) _then)
      : super(_value, (v) => _then(v as _FrequencyChanged));

  @override
  _FrequencyChanged get _value => super._value as _FrequencyChanged;

  @override
  $Res call({
    Object? frequencyStr = freezed,
  }) {
    return _then(_FrequencyChanged(
      frequencyStr == freezed
          ? _value.frequencyStr
          : frequencyStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FrequencyChanged implements _FrequencyChanged {
  const _$_FrequencyChanged(this.frequencyStr);

  @override
  final String frequencyStr;

  @override
  String toString() {
    return 'HabitFormEvent.frequencyChanged(frequencyStr: $frequencyStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FrequencyChanged &&
            (identical(other.frequencyStr, frequencyStr) ||
                const DeepCollectionEquality()
                    .equals(other.frequencyStr, frequencyStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(frequencyStr);

  @JsonKey(ignore: true)
  @override
  _$FrequencyChangedCopyWith<_FrequencyChanged> get copyWith =>
      __$FrequencyChangedCopyWithImpl<_FrequencyChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Habit> initialHabitOption) initialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String descriptionStr) descriptionChanged,
    required TResult Function(String priorityStr) priorityChanged,
    required TResult Function(String typeStr) typeChanged,
    required TResult Function(String countStr) countChanged,
    required TResult Function(String frequencyStr) frequencyChanged,
    required TResult Function() saved,
  }) {
    return frequencyChanged(frequencyStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Habit> initialHabitOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(String priorityStr)? priorityChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function(String countStr)? countChanged,
    TResult Function(String frequencyStr)? frequencyChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (frequencyChanged != null) {
      return frequencyChanged(frequencyStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_PriorityChanged value) priorityChanged,
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_CountChanged value) countChanged,
    required TResult Function(_FrequencyChanged value) frequencyChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return frequencyChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_PriorityChanged value)? priorityChanged,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_CountChanged value)? countChanged,
    TResult Function(_FrequencyChanged value)? frequencyChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (frequencyChanged != null) {
      return frequencyChanged(this);
    }
    return orElse();
  }
}

abstract class _FrequencyChanged implements HabitFormEvent {
  const factory _FrequencyChanged(String frequencyStr) = _$_FrequencyChanged;

  String get frequencyStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FrequencyChangedCopyWith<_FrequencyChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SavedCopyWithImpl<$Res> extends _$HabitFormEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'HabitFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Habit> initialHabitOption) initialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String descriptionStr) descriptionChanged,
    required TResult Function(String priorityStr) priorityChanged,
    required TResult Function(String typeStr) typeChanged,
    required TResult Function(String countStr) countChanged,
    required TResult Function(String frequencyStr) frequencyChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Habit> initialHabitOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(String priorityStr)? priorityChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function(String countStr)? countChanged,
    TResult Function(String frequencyStr)? frequencyChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_PriorityChanged value) priorityChanged,
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_CountChanged value) countChanged,
    required TResult Function(_FrequencyChanged value) frequencyChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_PriorityChanged value)? priorityChanged,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_CountChanged value)? countChanged,
    TResult Function(_FrequencyChanged value)? frequencyChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements HabitFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
class _$HabitFormStateTearOff {
  const _$HabitFormStateTearOff();

  _HabitFormState call(
      {required Habit habit,
      required bool showErrorMessages,
      required bool isEditing,
      required bool isSaving,
      required Option<Either<HabitFailure, Unit>> saveFailureOrSuccessOption}) {
    return _HabitFormState(
      habit: habit,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $HabitFormState = _$HabitFormStateTearOff();

/// @nodoc
mixin _$HabitFormState {
  Habit get habit => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<HabitFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HabitFormStateCopyWith<HabitFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitFormStateCopyWith<$Res> {
  factory $HabitFormStateCopyWith(
          HabitFormState value, $Res Function(HabitFormState) then) =
      _$HabitFormStateCopyWithImpl<$Res>;
  $Res call(
      {Habit habit,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<HabitFailure, Unit>> saveFailureOrSuccessOption});

  $HabitCopyWith<$Res> get habit;
}

/// @nodoc
class _$HabitFormStateCopyWithImpl<$Res>
    implements $HabitFormStateCopyWith<$Res> {
  _$HabitFormStateCopyWithImpl(this._value, this._then);

  final HabitFormState _value;
  // ignore: unused_field
  final $Res Function(HabitFormState) _then;

  @override
  $Res call({
    Object? habit = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      habit: habit == freezed
          ? _value.habit
          : habit // ignore: cast_nullable_to_non_nullable
              as Habit,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<HabitFailure, Unit>>,
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
abstract class _$HabitFormStateCopyWith<$Res>
    implements $HabitFormStateCopyWith<$Res> {
  factory _$HabitFormStateCopyWith(
          _HabitFormState value, $Res Function(_HabitFormState) then) =
      __$HabitFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Habit habit,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<HabitFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $HabitCopyWith<$Res> get habit;
}

/// @nodoc
class __$HabitFormStateCopyWithImpl<$Res>
    extends _$HabitFormStateCopyWithImpl<$Res>
    implements _$HabitFormStateCopyWith<$Res> {
  __$HabitFormStateCopyWithImpl(
      _HabitFormState _value, $Res Function(_HabitFormState) _then)
      : super(_value, (v) => _then(v as _HabitFormState));

  @override
  _HabitFormState get _value => super._value as _HabitFormState;

  @override
  $Res call({
    Object? habit = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_HabitFormState(
      habit: habit == freezed
          ? _value.habit
          : habit // ignore: cast_nullable_to_non_nullable
              as Habit,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<HabitFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_HabitFormState implements _HabitFormState {
  const _$_HabitFormState(
      {required this.habit,
      required this.showErrorMessages,
      required this.isEditing,
      required this.isSaving,
      required this.saveFailureOrSuccessOption});

  @override
  final Habit habit;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<HabitFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'HabitFormState(habit: $habit, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HabitFormState &&
            (identical(other.habit, habit) ||
                const DeepCollectionEquality().equals(other.habit, habit)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(habit) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$HabitFormStateCopyWith<_HabitFormState> get copyWith =>
      __$HabitFormStateCopyWithImpl<_HabitFormState>(this, _$identity);
}

abstract class _HabitFormState implements HabitFormState {
  const factory _HabitFormState(
      {required Habit habit,
      required bool showErrorMessages,
      required bool isEditing,
      required bool isSaving,
      required Option<Either<HabitFailure, Unit>>
          saveFailureOrSuccessOption}) = _$_HabitFormState;

  @override
  Habit get habit => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isEditing => throw _privateConstructorUsedError;
  @override
  bool get isSaving => throw _privateConstructorUsedError;
  @override
  Option<Either<HabitFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HabitFormStateCopyWith<_HabitFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
