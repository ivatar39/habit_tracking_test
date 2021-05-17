import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habit_tracking_test/domain/habits/habit.dart';
import 'package:habit_tracking_test/domain/habits/habit_failure.dart';
import 'package:habit_tracking_test/domain/habits/i_habit_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';

part 'habit_watcher_bloc.freezed.dart';
part 'habit_watcher_event.dart';
part 'habit_watcher_state.dart';

@injectable
class HabitWatcherBloc extends Bloc<HabitWatcherEvent, HabitWatcherState> {
  final IHabitRepository _repository;

  HabitWatcherBloc(
    this._repository,
  ) : super(const HabitWatcherState.initial());
  StreamSubscription<Either<HabitFailure, KtList<Habit>>>?
      _habitStreamSubscription;

  @override
  Stream<HabitWatcherState> mapEventToState(HabitWatcherEvent event) async* {
    yield* event.map(
      getBad: (e) async* {
        yield const HabitWatcherState.loadInProgress();
        _habitStreamSubscription = _repository.watchBad().listen(
            (failureOrHabits) =>
                add(HabitWatcherEvent.habitsReceived(failureOrHabits)));
      },
      getGood: (e) async* {
        yield const HabitWatcherState.loadInProgress();
        _habitStreamSubscription = _repository.watchGood().listen(
            (failureOrHabits) =>
                add(HabitWatcherEvent.habitsReceived(failureOrHabits)));
      },
      habitsReceived: (e) async* {
        yield e.failureOrHabits.fold(
          (f) => HabitWatcherState.loadFailure(f),
          (habits) => HabitWatcherState.loadSuccess(habits),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _habitStreamSubscription?.cancel();
    return super.close();
  }
}
