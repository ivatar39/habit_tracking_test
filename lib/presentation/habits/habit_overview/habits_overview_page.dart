import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit_tracking_test/application/habits/habit_watcher/habit_watcher_bloc.dart';
import 'package:habit_tracking_test/presentation/habits/habit_overview/widgets/habits_overview_body.dart';
import 'package:habit_tracking_test/presentation/injection.dart';
import 'package:habit_tracking_test/presentation/router/app_router.gr.dart';

import 'widgets/habits_switch.dart';

class HabitsOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (_) => getIt<HabitWatcherBloc>()
              ..add(const HabitWatcherEvent.getGood())),
      ],
      child: BlocListener<HabitWatcherBloc, HabitWatcherState>(
        listener: (context, state) {},
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          appBar: AppBar(
            title: const Text('Habits'),
          ),
          body: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: HabitsSwitch(),
              ),
              HabitsOverviewBody(),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              context.router.push(HabitFormPageRoute(editedHabit: null));
            },
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
