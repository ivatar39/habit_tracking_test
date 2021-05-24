import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habit_tracking_test/domain/habits/habit.dart';
import 'package:habit_tracking_test/domain/habits/habit_failure.dart';
import 'package:habit_tracking_test/domain/habits/i_habit_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';

part 'habit_search_bloc.freezed.dart';

part 'habit_search_event.dart';

part 'habit_search_state.dart';

@injectable
class HabitSearchBloc extends Bloc<HabitSearchEvent, HabitSearchState> {
  final IHabitRepository _repository;

  HabitSearchBloc(
    this._repository,
  ) : super(const HabitSearchState.initial());

  @override
  Stream<HabitSearchState> mapEventToState(HabitSearchEvent event) async* {
    yield* event.map(
      searchHabitsByQuery: (e) async* {
        yield const HabitSearchState.searchInProgress();
        final failureOrSearchedHabits =
            await _repository.searchByQuery(e.query);
        yield failureOrSearchedHabits.fold(
          (failure) => HabitSearchState.searchFailure(failure),
          (habits) => HabitSearchState.searchCompleted(habits),
        );
      },
    );
  }
}
