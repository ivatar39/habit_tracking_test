part of 'habit_search_bloc.dart';

@freezed
class HabitSearchState with _$HabitSearchState {
  const factory HabitSearchState.initial() = Initial;

  const factory HabitSearchState.searchInProgress() = SearchInProgress;

  const factory HabitSearchState.searchFailure(HabitFailure failure) =
      SearchFailure;

  const factory HabitSearchState.searchCompleted(KtList<Habit> habits) =
      SearchCompleted;
}
