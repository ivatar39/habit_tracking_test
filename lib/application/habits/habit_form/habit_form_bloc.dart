import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habit_tracking_test/domain/habits/habit.dart';
import 'package:habit_tracking_test/domain/habits/habit_failure.dart';
import 'package:habit_tracking_test/domain/habits/i_habit_repository.dart';
import 'package:habit_tracking_test/domain/habits/value_objects.dart';
import 'package:injectable/injectable.dart';

part 'habit_form_bloc.freezed.dart';

part 'habit_form_event.dart';

part 'habit_form_state.dart';

@injectable
class HabitFormBloc extends Bloc<HabitFormEvent, HabitFormState> {
  final IHabitRepository _repository;

  HabitFormBloc(this._repository) : super(HabitFormState.initial());

  @override
  Stream<HabitFormState> mapEventToState(HabitFormEvent event) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialHabitOption.fold(
          () => state,
          (initialHabit) => state.copyWith(
            habit: initialHabit,
            isEditing: true,
          ),
        );
      },
      nameChanged: (e) async* {
        yield state.copyWith(
          habit: state.habit.copyWith(name: HabitName(e.nameStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      descriptionChanged: (e) async* {
        yield state.copyWith(
          habit: state.habit
              .copyWith(description: HabitDescription(e.descriptionStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      priorityChanged: (e) async* {
        yield state.copyWith(
          habit: state.habit.copyWith(priority: Priority(e.priorityStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      typeChanged: (e) async* {
        yield state.copyWith(
          habit: state.habit.copyWith(type: Type(e.typeStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      countChanged: (e) async* {
        yield state.copyWith(
          habit: state.habit.copyWith(count: Count(e.countStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      frequencyChanged: (e) async* {
        yield state.copyWith(
          habit: state.habit.copyWith(frequency: Frequency(e.frequencyStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      saved: (e) async* {
        Either<HabitFailure, Unit>? failureOrSuccess;
        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );

        if (state.habit.failureOption.isNone()) {
          failureOrSuccess = state.isEditing
              ? await _repository.update(state.habit)
              : await _repository.create(state.habit);
        }
        yield state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
