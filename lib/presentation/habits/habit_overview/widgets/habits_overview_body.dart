import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit_tracking_test/application/habits/habit_watcher/habit_watcher_bloc.dart';
import 'package:habit_tracking_test/presentation/habits/habit_overview/widgets/crtitcal_failure_display_widget.dart';
import 'package:habit_tracking_test/presentation/habits/habit_overview/widgets/habit_card_widget.dart';

class HabitsOverviewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HabitWatcherBloc, HabitWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) =>
              const Center(child: CircularProgressIndicator()),
          loadSuccess: (state) => state.habits.isEmpty()
              ? const Center(
                  child: Text(
                    "You don't have any habits yet. \nTry to add them.",
                    textAlign: TextAlign.center,
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemCount: state.habits.size,
                    itemBuilder: (context, index) {
                      final habit = state.habits[index];
                      return HabitCardWidget(
                        habit: habit,
                      );
                    },
                  ),
                ),
          loadFailure: (state) =>
              CriticalFailureDisplay(failure: state.habitFailure),
        );
      },
    );
  }
}
