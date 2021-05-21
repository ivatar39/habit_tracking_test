part of 'habit_watcher_bloc.dart';

@freezed
class HabitWatcherEvent with _$HabitWatcherEvent {
  const factory HabitWatcherEvent.getInitial() = _GetInitial;

  const factory HabitWatcherEvent.watchBad() = _GetBad;

  const factory HabitWatcherEvent.watchGood() = _GetGood;

  const factory HabitWatcherEvent.sortByDate() = _SortByDate;

  const factory HabitWatcherEvent.habitsReceived(
      Either<HabitFailure, KtList<Habit>> failureOrHabits) = _HabitsReceived;
}
