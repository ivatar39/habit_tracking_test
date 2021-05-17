part of 'habit_actor_bloc.dart';

@freezed
class HabitActorEvent with _$HabitActorEvent {
  const factory HabitActorEvent.deleted(Habit habit) = _Deleted;

  const factory HabitActorEvent.completed(Habit habit) = _Completed;
}
