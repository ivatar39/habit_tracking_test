// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'habit_dto.dart';

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
