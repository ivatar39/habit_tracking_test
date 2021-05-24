part of 'habit_watcher_bloc.dart';

@freezed
class HabitWatcherEvent with _$HabitWatcherEvent {
  const factory HabitWatcherEvent.getInitial() = _GetInitial;

  const factory HabitWatcherEvent.watchBad({required bool isSortedByDate}) =
      _GetBad;

  const factory HabitWatcherEvent.watchGood({required bool isSortedByDate}) =
      _GetGood;

  const factory HabitWatcherEvent.habitsReceived(
      Either<HabitFailure, KtList<Habit>> failureOrHabits) = _HabitsReceived;
}
