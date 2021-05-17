// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'habit_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HabitDtoAdapter extends TypeAdapter<HabitDto> {
  @override
  final int typeId = 0;

  @override
  HabitDto read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HabitDto(
      title: fields[0] as String,
      count: fields[1] as int,
      date: fields[2] as int,
      description: fields[3] as String,
      doneDates: (fields[4] as List?)?.cast<int>(),
      frequency: fields[5] as int,
      priority: fields[6] as int,
      type: fields[7] as int,
      uid: fields[8] as String,
    );
  }

  @override
  void write(BinaryWriter writer, HabitDto obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.count)
      ..writeByte(2)
      ..write(obj.date)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.doneDates)
      ..writeByte(5)
      ..write(obj.frequency)
      ..writeByte(6)
      ..write(obj.priority)
      ..writeByte(7)
      ..write(obj.type)
      ..writeByte(8)
      ..write(obj.uid);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HabitDtoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HabitDto _$_$_HabitDtoFromJson(Map<String, dynamic> json) {
  return _$_HabitDto(
    title: json['title'] as String,
    count: json['count'] as int,
    date: json['date'] as int,
    description: json['description'] as String,
    doneDates:
        (json['done_dates'] as List<dynamic>?)?.map((e) => e as int).toList(),
    frequency: json['frequency'] as int,
    priority: json['priority'] as int,
    type: json['type'] as int,
    uid: json['uid'] as String,
  );
}

Map<String, dynamic> _$_$_HabitDtoToJson(_$_HabitDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'count': instance.count,
      'date': instance.date,
      'description': instance.description,
      'done_dates': instance.doneDates,
      'frequency': instance.frequency,
      'priority': instance.priority,
      'type': instance.type,
      'uid': instance.uid,
    };
