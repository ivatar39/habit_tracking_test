import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habit_tracking_test/domain/habits/habit.dart';
import 'package:habit_tracking_test/domain/habits/value_objects.dart';
import 'package:hive/hive.dart';
import 'package:kt_dart/collection.dart';

part 'habit_dto.freezed.dart';
part 'habit_dto.g.dart';

@HiveType(typeId: 0)
@freezed
class HabitDto with _$HabitDto {
  const HabitDto._();

  const factory HabitDto({
    @HiveField(0) required String title,
    @HiveField(1) required int count,
    @HiveField(2) required int date,
    @HiveField(3) required String description,
    @HiveField(4) @JsonKey(name: 'done_dates') required List<int>? doneDates,
    @HiveField(5) required int frequency,
    @HiveField(6) required int priority,
    @HiveField(7) required int type,
    @HiveField(8) required String uid,
  }) = _HabitDto;

  factory HabitDto.fromDomain(Habit habit) {
    return HabitDto(
      title: habit.name.getOrCrash(),
      count: habit.count.number,
      date: habit.dateCreated.millisecondsSinceEpoch,
      uid: habit.id.getOrCrash().toString(),
      frequency: habit.frequency.number,
      type: Type.predefinedTypes.indexOf(habit.type.getOrCrash()),
      priority:
      Priority.predefinedPriorities.indexOf(habit.priority.getOrCrash()),
      description: habit.description.getOrCrash(),
      doneDates: habit.datesList
          .getOrCrash()
          .asList()
          .map((e) => e.millisecondsSinceEpoch)
          .toList(),
    );
  }

  Habit toDomain() {
    return Habit(
      id: UniqueId.fromUniqueString(uid),
      name: HabitName(title),
      description: HabitDescription(description),
      priority: Priority(Priority.predefinedPriorities[priority]),
      type: Type(Type.predefinedTypes[type]),
      count: Count(count.toString()),
      frequency: Frequency(frequency.toString()),
      datesList: DatesList(
        KtList.from(
            doneDates!.map((e) => DateTime.fromMillisecondsSinceEpoch(e))),
      ),
      dateCreated: DateTime.fromMillisecondsSinceEpoch(date),
    );
  }

  factory HabitDto.fromJson(Map<String, dynamic> json) =>
      _$HabitDtoFromJson(json);
}
