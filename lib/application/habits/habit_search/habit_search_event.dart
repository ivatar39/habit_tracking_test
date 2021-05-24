part of 'habit_search_bloc.dart';

@freezed
class HabitSearchEvent with _$HabitSearchEvent {
  const factory HabitSearchEvent.searchHabitsByQuery(String query) =
      SearchHabitsByQuery;
}
