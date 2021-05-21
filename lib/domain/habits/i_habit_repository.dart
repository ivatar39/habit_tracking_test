import 'package:dartz/dartz.dart';
import 'package:habit_tracking_test/domain/habits/habit.dart';
import 'package:habit_tracking_test/domain/habits/habit_failure.dart';
import 'package:kt_dart/collection.dart';

abstract class IHabitRepository {
  Stream<Either<HabitFailure, KtList<Habit>>> watchGood();

  Stream<Either<HabitFailure, KtList<Habit>>> watchBad();

  Future<Either<HabitFailure, KtList<Habit>>> sortByDate();

  Future<Either<HabitFailure, Unit>> create(Habit habit);

  Future<Either<HabitFailure, KtList<Habit>>> read();

  Future<Either<HabitFailure, Unit>> update(Habit habit);

  Future<Either<HabitFailure, Unit>> delete(Habit habit);

  Future<Either<HabitFailure, String>> complete(Habit habit);
}
