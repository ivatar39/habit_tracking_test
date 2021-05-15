import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:habit_tracking_test/application/habits/habit_watcher/habit_watcher_bloc.dart';

class HabitsSwitch extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final toggleGoodHabitsState = useState(true);
    final toggleBadHabitsState = useState(false);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ToggleButtons(
        isSelected: <bool>[
          toggleGoodHabitsState.value,
          toggleBadHabitsState.value,
        ],
        onPressed: (index) {
          switch (index) {
            case 0:
              toggleGoodHabitsState.value = true;
              toggleBadHabitsState.value = false;
              context
                  .read<HabitWatcherBloc>()
                  .add(const HabitWatcherEvent.getGood());
              break;
            case 1:
              toggleGoodHabitsState.value = false;
              toggleBadHabitsState.value = true;
              context
                  .read<HabitWatcherBloc>()
                  .add(const HabitWatcherEvent.getBad());
              break;
          }
        },
        children: const [
          Icon(Icons.thumb_up),
          Icon(Icons.thumb_down),
        ],
      ),
    );
  }
}
