import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habit_tracking_test/domain/habits/value_objects.dart';

part 'habit.freezed.dart';

@freezed
class Habit with _$Habit {
  const Habit._();

  const factory Habit({
    required UniqueId id,
    required HabitName name,
    required HabitDescription description,
    required Priority priority,
    required Type type,
    required Count count,
    required Frequency frequency,
    required DatesList datesList,
    required DateTime dateCreated,
  }) = _Habit;

  factory Habit.empty() => Habit(
        id: UniqueId(),
        name: HabitName(''),
        description: HabitDescription(''),
        priority: Priority(Priority.predefinedPriorities.first),
        type: Type(Type.predefinedTypes.first),
        count: Count.zero(),
        frequency: Frequency.zero(),
        datesList: DatesList.empty(),
        dateCreated: DateTime.now(),
      );
}
