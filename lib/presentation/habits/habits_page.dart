import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:habit_tracking_test/presentation/habits/widgets/habits_body.dart';
import 'package:habit_tracking_test/presentation/router/app_router.gr.dart';

class HabitsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Habits'),
      ),
      body: const HabitsBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.router.push(const AddHabitPageRoute());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
