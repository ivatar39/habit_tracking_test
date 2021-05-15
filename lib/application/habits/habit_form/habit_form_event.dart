part of 'habit_form_bloc.dart';

@freezed
class HabitFormEvent with _$HabitFormEvent {
  const factory HabitFormEvent.initialized(Option<Habit> initialHabitOption) =
      _Initialized;

  const factory HabitFormEvent.nameChanged(String nameStr) = _NameChanged;

  const factory HabitFormEvent.descriptionChanged(String descriptionStr) =
      _DescriptionChanged;

  const factory HabitFormEvent.priorityChanged(String priorityStr) =
      _PriorityChanged;

  const factory HabitFormEvent.typeChanged(String typeStr) = _TypeChanged;

  const factory HabitFormEvent.countChanged(String countStr) = _CountChanged;

  const factory HabitFormEvent.frequencyChanged(String frequencyStr) =
      _FrequencyChanged;

  const factory HabitFormEvent.saved() = _Saved;
}
