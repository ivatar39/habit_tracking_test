import 'dart:convert';
import 'dart:math';

import 'package:connectivity/connectivity.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:habit_tracking_test/domain/habits/habit.dart';
import 'package:habit_tracking_test/domain/habits/habit_failure.dart';
import 'package:habit_tracking_test/domain/habits/i_habit_repository.dart';
import 'package:habit_tracking_test/domain/habits/value_objects.dart';
import 'package:habit_tracking_test/infrastructure/habits/habit_dto.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

/// All API cals are blocked, because PUT-requests returned 405 http-error
/// Doing things locally for now.

@LazySingleton(as: IHabitRepository)
class HabitRepository implements IHabitRepository {
  final Dio _dio;
  final Connectivity _connectivity;

  HabitRepository(
    this._dio,
    this._connectivity,
  );

  @override
  Future<Either<HabitFailure, Unit>> create(Habit habit) async {
    debugPrint('Create $habit');

    try {
      final HabitDto dto = HabitDto.fromDomain(habit);
      await Hive.box<HabitDto>('habits').put(dto.uid, dto);
      return right(unit);
    } on Exception catch (e) {
      debugPrint(e.toString());
      return left(const HabitFailure.unexpected());
    }
    if (await _connectivity.checkConnectivity() != ConnectivityResult.none) {
      final HabitDto habitDto = HabitDto.fromDomain(habit);
      try {
        final map = habitDto.toJson();
        map.remove('id');
        final json = jsonEncode(map);
        debugPrint(json);
        final result = await _dio.post('/habit', data: json);
        debugPrint(result.statusMessage);
        return right(unit);
      } on DioError catch (e) {
        debugPrint(e.error.toString());
        debugPrint(e.message);
        debugPrint(e.response!.statusMessage);
        return left(const HabitFailure.unexpected());
      }
    } else {
      return left(const HabitFailure.noInternetConnection());
    }
  }

  @override
  Future<Either<HabitFailure, Unit>> update(Habit habit) async {
    debugPrint('Update $habit');
    try {
      final HabitDto dto = HabitDto.fromDomain(habit);
      await Hive.box<HabitDto>('habits').put(dto.uid, dto);
      return right(unit);
    } on Exception catch (e) {
      debugPrint(e.toString());
      return left(const HabitFailure.unexpected());
    }
    if (await _connectivity.checkConnectivity() != ConnectivityResult.none) {
      final HabitDto habitDto = HabitDto.fromDomain(habit);
      try {
        final result =
            await _dio.post('/habit', data: jsonEncode(habitDto.toJson()));
        debugPrint(result.statusMessage);
        return right(unit);
      } on DioError catch (e) {
        debugPrint(e.error.toString());
        debugPrint(e.message);
        return left(const HabitFailure.unexpected());
      }
    } else {
      return left(const HabitFailure.noInternetConnection());
    }
  }

  @override
  Future<Either<HabitFailure, Unit>> delete(Habit habit) async {
    debugPrint('Delete $habit');
    try {
      final HabitDto dto = HabitDto.fromDomain(habit);
      await Hive.box<HabitDto>('habits').delete(dto.uid);
      return right(unit);
    } on Exception catch (e) {
      debugPrint(e.toString());
      return left(const HabitFailure.unexpected());
    }
    if (await _connectivity.checkConnectivity() != ConnectivityResult.none) {
      final HabitDto habitDto = HabitDto.fromDomain(habit);
      try {
        final json = {'uid': habitDto.uid};
        debugPrint(json.toString());
        final result = await _dio.delete('/habit', data: jsonEncode(json));
        debugPrint(result.statusMessage);
        return right(unit);
      } on DioError catch (e) {
        debugPrint(e.error.toString());
        return left(const HabitFailure.unexpected());
      }
    } else {
      return left(const HabitFailure.noInternetConnection());
    }
  }

  @override
  Stream<Either<HabitFailure, KtList<Habit>>> watchBad() async* {
    debugPrint('Get bad');
    final habitDtoBox = await Hive.openBox<HabitDto>('habits');

    final Stream<BoxEvent> stream =
        habitDtoBox.watch().startWith(BoxEvent(null, null, false));

    yield* stream.map((event) => right(habitDtoBox.values
        .map((habitDto) => habitDto.toDomain())
        .toImmutableList()
        .filter((habit) => habit.type == Type.bad())));
  }

  @override
  Stream<Either<HabitFailure, KtList<Habit>>> watchGood() async* {
    debugPrint('Get good');
    final habitDtoBox = await Hive.openBox<HabitDto>('habits');

    final Stream stream =
        habitDtoBox.watch().startWith(BoxEvent(null, null, false));

    yield* stream.map((event) => right(habitDtoBox.values
        .map((habitDto) => habitDto.toDomain())
        .toImmutableList()
        .filter((habit) => habit.type == Type.good())));
  }

  @override
  Future<Either<HabitFailure, String>> complete(Habit habit) async {
    debugPrint('Complete $habit');
    try {
      final datesList = habit.datesList;
      datesList.getOrCrash().toMutableList().add(DateTime.now());
      final completedHabit = habit.copyWith(
        count: Count((habit.count.number + 1).toString()),
        datesList: datesList,
      );

      final HabitDto dto = HabitDto.fromDomain(completedHabit);
      await Hive.box<HabitDto>('habits').put(dto.uid, dto);

      return right(getMotivationalBark(completedHabit));
    } on Exception catch (e) {
      debugPrint(e.toString());
      return left(const HabitFailure.unexpected());
    }
  }

  String getMotivationalBark(Habit habit) {
    const List<String> kGoodBarksLowFrequency = [
      'You can do it!',
      'Believe in yourself!',
      'Go on!',
      'Proceed!'
    ];
    const List<String> kGoodBarksHighFrequency = [
      'You are breathtaking!',
      'Amazing!',
      'Wow!',
      'So cool!'
    ];
    const List<String> kBadBarksLowFrequency = [
      'Try not to do that again.',
      'Maybe it is not the best decision.',
      'Please, stop.',
      'Last time, ok?'
    ];
    const List<String> kBadBarksHighFrequency = [
      'Oh, no...',
      'Stop!',
      'Why do you keep doing this?',
      'Why?'
    ];

    if (habit.type == Type.good()) {
      if (habit.count.number >= habit.frequency.number) {
        return kGoodBarksHighFrequency[
            Random().nextInt(kGoodBarksHighFrequency.length)];
      } else {
        return kGoodBarksLowFrequency[
            Random().nextInt(kGoodBarksLowFrequency.length)];
      }
    } else {
      if (habit.count.number >= habit.frequency.number) {
        return kBadBarksHighFrequency[
            Random().nextInt(kBadBarksHighFrequency.length)];
      } else {
        return kBadBarksLowFrequency[
            Random().nextInt(kBadBarksLowFrequency.length)];
      }
    }
  }
}
