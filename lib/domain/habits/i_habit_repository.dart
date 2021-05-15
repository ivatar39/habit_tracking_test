import 'package:dartz/dartz.dart';
import 'package:habit_tracking_test/domain/habits/habit.dart';
import 'package:habit_tracking_test/domain/habits/habit_failure.dart';
import 'package:kt_dart/collection.dart';

abstract class IHabitRepository {
  Future<Either<HabitFailure, KtList<Habit>>> getGood();

  Future<Either<HabitFailure, KtList<Habit>>> getBad();

  Future<Either<HabitFailure, Unit>> create(Habit habit);

  Future<Either<HabitFailure, Unit>> update(Habit habit);

  Future<Either<HabitFailure, Unit>> delete(Habit habit);
}
