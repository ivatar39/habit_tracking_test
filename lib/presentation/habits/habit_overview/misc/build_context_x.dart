import 'package:flutter/material.dart';
import 'package:habit_tracking_test/presentation/habits/habit_overview/misc/habit_sorter_notifier.dart';
import 'package:provider/provider.dart';

extension HabitSorterX on BuildContext {
  bool get habitSorter => read<HabitSorter>().value;

  set habitSorter(bool isSortedByDate) =>
      read<HabitSorter>().value = isSortedByDate;
}
