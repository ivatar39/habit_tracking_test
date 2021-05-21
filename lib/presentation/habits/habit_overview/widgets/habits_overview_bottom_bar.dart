import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:habit_tracking_test/application/habits/habit_watcher/habit_watcher_bloc.dart';

class HabitsOverviewBottomBar extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final _sortByDate = useState(false);

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
                              _sortByDate.value = !_sortByDate.value;
                            },
                            child: Text(_sortByDate.value
                                ? 'Date of creation'
                                : 'My order'),
                          ),
                        ),
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
