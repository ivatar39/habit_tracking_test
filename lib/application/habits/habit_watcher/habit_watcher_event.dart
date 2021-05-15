part of 'habit_watcher_bloc.dart';

@freezed
class HabitWatcherEvent with _$HabitWatcherEvent {
  const factory HabitWatcherEvent.getBad() = _GetBad;

  const factory HabitWatcherEvent.getGood() = _GetGood;

  const factory HabitWatcherEvent.habitsReceived(
      Either<HabitFailure, KtList<Habit>> failureOrHabits) = _HabitsReceived;
}
