import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habit_tracking_test/domain/habits/habit.dart';
import 'package:habit_tracking_test/domain/habits/habit_failure.dart';
import 'package:habit_tracking_test/domain/habits/i_habit_repository.dart';
import 'package:habit_tracking_test/domain/habits/value_objects.dart';
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
      getInitial: (e) async* {
        yield const HabitWatcherState.loadInProgress();
        final failureOrHabits = await _repository.read();
        yield failureOrHabits.fold(
          (habitFailure) => HabitWatcherState.loadFailure(habitFailure),
          (habits) => HabitWatcherState.loadSuccess(habits, isTypeGood: true),
        );
      },
      watchBad: (e) async* {
        yield const HabitWatcherState.loadInProgress();
        _habitStreamSubscription = _repository
            .watchBad(isSortedByDate: e.isSortedByDate)
            .listen((failureOrHabits) =>
                add(HabitWatcherEvent.habitsReceived(failureOrHabits)));
      },
      watchGood: (e) async* {
        yield const HabitWatcherState.loadInProgress();
        _habitStreamSubscription = _repository
            .watchGood(isSortedByDate: e.isSortedByDate)
            .listen((failureOrHabits) =>
                add(HabitWatcherEvent.habitsReceived(failureOrHabits)));
      },
      habitsReceived: (e) async* {
        yield e.failureOrHabits.fold((f) => HabitWatcherState.loadFailure(f),
            (habits) {
          final isNotEmpty = habits.isNotEmpty();
          if (isNotEmpty) {
            return HabitWatcherState.loadSuccess(habits,
                isTypeGood: habits.first().type == Type.good());
          }
          return HabitWatcherState.loadSuccess(habits, isTypeGood: true);
        });
      },
    );
  }

  @override
  Future<void> close() async {
    await _habitStreamSubscription?.cancel();
    return super.close();
  }
}
