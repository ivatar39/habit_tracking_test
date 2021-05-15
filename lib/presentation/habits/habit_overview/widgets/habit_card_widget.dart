import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
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

    return Card(
      color: habit.type == Type.good() ? Colors.green[50] : Colors.red[50],
      elevation: 6,
      child: InkWell(
        onTap: () {
          context.router.push(HabitFormPageRoute(editedHabit: habit));
        },
        onLongPress: () {},
        child: ListTile(
          title: Text(
            habit.name.getOrCrash(),
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
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
