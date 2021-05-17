import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit_tracking_test/application/habits/habit_actor/habit_actor_bloc.dart';
import 'package:habit_tracking_test/domain/habits/habit.dart';
import 'package:habit_tracking_test/domain/habits/value_objects.dart';
import 'package:habit_tracking_test/presentation/router/app_router.gr.dart';

class HabitCardWidget extends StatelessWidget {
  final Habit habit;

  const HabitCardWidget({
    Key? key,
    required this.habit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color _getPriorityColor(Priority priority) {
      if (priority == Priority.low()) {
        return Colors.blue;
      }
      if (priority == Priority.medium()) {
        return Colors.yellow.shade900;
      }
      if (priority == Priority.high()) {
        return Colors.red;
      }
      return Colors.grey;
    }

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 100),
      key: key,
      child: Card(
        color: habit.type == Type.good() ? Colors.green[50] : Colors.red[50],
        elevation: 6,
        child: InkWell(
          onTap: () {
            context.router.push(HabitFormPageRoute(editedHabit: habit));
          },
          onLongPress: () {
            _showDeletionDialog(context, context.read<HabitActorBloc>());
          },
          child: ListTile(
            title: Row(
              children: [
                Text(
                  habit.name.getOrCrash(),
                ),
                const SizedBox(width: 8),
                Text(
                  habit.count.getOrCrash(),
                ),
                const Text('/'),
                Text(
                  habit.frequency.getOrCrash(),
                ),
              ],
            ),
            subtitle: Text(
              habit.description.getOrCrash(),
            ),
            leading: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.priority_high,
                  color: _getPriorityColor(habit.priority),
                ),
                Text(
                  habit.priority.getOrCrash(),
                  style: Theme.of(context).textTheme.caption!.copyWith(
                        color: _getPriorityColor(habit.priority),
                      ),
                ),
              ],
            ),
            isThreeLine: true,
            trailing: IconButton(
              icon: const Icon(Icons.done),
              tooltip: 'Done',
              color: Colors.green,
              onPressed: () {
                context
                    .read<HabitActorBloc>()
                    .add(HabitActorEvent.completed(habit));
              },
            ),
          ),
        ),
      ),
    );
  }

  void _showDeletionDialog(
      BuildContext context, HabitActorBloc habitActorBloc) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Selected habit:'),
          content: Text(
            habit.name.getOrCrash(),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('CANCEL'),
            ),
            TextButton(
              onPressed: () {
                habitActorBloc.add(HabitActorEvent.deleted(habit));
                Navigator.pop(context);
              },
              child: const Text('DELETE'),
            )
          ],
        );
      },
    );
  }
}
