import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habit_tracking_test/domain/habits/habit.dart';
import 'package:habit_tracking_test/domain/habits/habit_failure.dart';
import 'package:habit_tracking_test/domain/habits/i_habit_repository.dart';
import 'package:habit_tracking_test/domain/habits/value_objects.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'habit_actor_bloc.freezed.dart';

part 'habit_actor_event.dart';

part 'habit_actor_state.dart';

@injectable
class HabitActorBloc extends Bloc<HabitActorEvent, HabitActorState> {
  final IHabitRepository _repository;

  HabitActorBloc(this._repository)
      : super(
          const HabitActorState.initial(),
        );

  @override
  Stream<HabitActorState> mapEventToState(HabitActorEvent event) async* {
    yield* event.map(
      deleted: (e) async* {
        yield const HabitActorState.actionProgress();
        final failureOrDeleted = await _repository.delete(e.habit);
        yield failureOrDeleted.fold(
          (failure) => HabitActorState.deleteFailure(failure),
          (_) => const HabitActorState.deleteSuccess(),
        );
      },
      completed: (e) async* {
        yield const HabitActorState.actionProgress();
        final failureOrDeleted = await _repository.complete(e.habit);
        yield failureOrDeleted.fold(
          (failure) => HabitActorState.completeFailure(failure),
          (completionBark) => HabitActorState.completeSuccess(
              isGood: e.habit.type == Type.good(),
              completionBark: completionBark),
        );
      },
    );
  }
}
