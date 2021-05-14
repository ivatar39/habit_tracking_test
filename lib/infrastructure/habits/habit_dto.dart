import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habit_tracking_test/domain/habits/habit.dart';
import 'package:habit_tracking_test/domain/habits/value_objects.dart';

part 'habit_dto.freezed.dart';

@freezed
class HabitDto with _$HabitDto {
  const HabitDto._();

  const factory HabitDto({
    required String title,
    required int count,
    required int date,
    required String description,
    required List<int> doneDates,
    required int frequency,
    required int priority,
    required int type,
    @JsonKey(ignore: true) String? id,
  }) = _HabitDto;

  factory HabitDto.fromDomain(Habit habit) {
    return HabitDto(
      title: habit.name.getOrCrash(),
      count: habit.count.number,
      date: habit.dateCreated.millisecondsSinceEpoch,
      id: habit.id.getOrCrash().toString(),
      frequency: habit.frequency.number,
      type: Type.predefinedTypes.indexOf(habit.type.getOrCrash()),
      priority:
          Priority.predefinedPriorities.indexOf(habit.priority.getOrCrash()),
      description: habit.description.getOrCrash(),
      doneDates: [],
    );
  }
}
