import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit_tracking_test/application/habits/habit_watcher/habit_watcher_bloc.dart';
import 'package:habit_tracking_test/presentation/habits/habit_overview/misc/build_context_x.dart';

class HabitsOverviewBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HabitWatcherBloc, HabitWatcherState>(
      builder: (context, state) {
        return BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (_) {
                      return SizedBox(
                        height: 100,
                        child: ListTile(
                            leading: const Text('Sort by: '),
                            trailing: TextButton(
                              onPressed: () {
                                context.habitSorter = !context.habitSorter;
                                state.maybeMap(
                                    orElse: () {},
                                    loadSuccess: (state) {
                                      context.read<HabitWatcherBloc>().add(
                                          state.isTypeGood
                                              ? HabitWatcherEvent.watchGood(
                                                  isSortedByDate:
                                                      context.habitSorter)
                                              : HabitWatcherEvent.watchBad(
                                                  isSortedByDate:
                                                      context.habitSorter));
                                    });
                                context.router.pop();
                              },
                              child: Text(context.habitSorter
                                  ? 'Date of creation'
                                  : 'My order'),
                            )),
                      );
                    },
                  );
                },
              ),
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {},
              ),
            ],
          ),
        );
      },
    );
  }
}
