part of 'habit_form_bloc.dart';

@freezed
class HabitFormState with _$HabitFormState {
  const factory HabitFormState({
    required Habit habit,
    required bool showErrorMessages,
    required bool isEditing,
    required bool isSaving,
    required Option<Either<HabitFailure, Unit>> saveFailureOrSuccessOption,
  }) = _HabitFormState;

  factory HabitFormState.initial() => HabitFormState(
        habit: Habit.empty(),
        showErrorMessages: false,
        isEditing: false,
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
}
