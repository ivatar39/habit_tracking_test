import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit_tracking_test/application/habits/habit_actor/habit_actor_bloc.dart';
import 'package:habit_tracking_test/application/habits/habit_watcher/habit_watcher_bloc.dart';
import 'package:habit_tracking_test/presentation/habits/habit_overview/widgets/habits_overview_body.dart';
import 'package:habit_tracking_test/presentation/injection.dart';
import 'package:habit_tracking_test/presentation/router/app_router.gr.dart';
import 'package:provider/provider.dart';

import 'misc/habit_sorter_notifier.dart';
import 'widgets/habits_overview_bottom_bar.dart';
import 'widgets/habits_tab_bar.dart';

class HabitsOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => getIt<HabitWatcherBloc>()
              ..add(const HabitWatcherEvent.getInitial())
              ..add(const HabitWatcherEvent.watchGood(isSortedByDate: false))),
        BlocProvider(create: (context) => getIt<HabitActorBloc>()),
      ],
      child: BlocListener<HabitActorBloc, HabitActorState>(
        listener: (context, state) {
          state.maybeMap(
              deleteFailure: (state) {
                FlushbarHelper.createError(
                  duration: const Duration(seconds: 5),
                  message: state.habitFailure.map(
                    unexpected: (_) =>
                        'Unexpected error occurred while deleting, please contact support.',
                    insufficientPermission: (_) => 'Insufficient permissions ❌',
                    unableToUpdate: (_) => 'Impossible error',
                    noInternetConnection: (_) => 'No internet connection',
                    serverError: (code) =>
                        'Some error has occurred on server. Here is some info: $code',
                  ),
                ).show(context);
              },
              completeSuccess: (state) {
                state.isGood
                    ? FlushbarHelper.createInformation(
                            message: state.completionBark)
                        .show(context)
                    : FlushbarHelper.createError(message: state.completionBark)
                        .show(context);
              },
              orElse: () {});
        },
        child: ChangeNotifierProvider(
          create: (_) => HabitSorter(isSortedByDate: false),
          child: Scaffold(
            resizeToAvoidBottomInset: true,
            appBar: AppBar(
              title: const Text('Habits'),
              bottom: HabitsTabBar(),
            ),
            body: HabitsOverviewBody(),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            floatingActionButton: FloatingActionButton(
              tooltip: 'Create new habit',
              onPressed: () {
                context.router.push(HabitFormPageRoute(editedHabit: null));
              },
              child: const Icon(Icons.add),
            ),
            bottomNavigationBar: HabitsOverviewBottomBar(),
          ),
        ),
      ),
    );
  }
}
