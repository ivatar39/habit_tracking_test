import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:habit_tracking_test/application/habits/habit_watcher/habit_watcher_bloc.dart';
import 'package:habit_tracking_test/presentation/habits/habit_overview/misc/build_context_x.dart';
import 'package:provider/provider.dart';

class HabitsTabBar extends HookWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    const tabs = [
      Tab(icon: Icon(Icons.thumb_up)),
      Tab(icon: Icon(Icons.thumb_down)),
    ];

    final _tabsController = useTabController(initialLength: tabs.length);
    final _index = useState(0);

    _tabsController.addListener(() {
      _index.value = _tabsController.index;
      switch (_index.value) {
        case 0:
          context.read<HabitWatcherBloc>().add(
              HabitWatcherEvent.watchGood(isSortedByDate: context.habitSorter));
          break;
        case 1:
          context.read<HabitWatcherBloc>().add(
              HabitWatcherEvent.watchBad(isSortedByDate: context.habitSorter));
          break;
      }
    });

    return TabBar(
      controller: _tabsController,
      tabs: tabs,
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 20);
}
