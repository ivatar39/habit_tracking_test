import 'dart:convert';

import 'package:connectivity/connectivity.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:habit_tracking_test/domain/habits/habit.dart';
import 'package:habit_tracking_test/domain/habits/habit_failure.dart';
import 'package:habit_tracking_test/domain/habits/i_habit_repository.dart';
import 'package:habit_tracking_test/domain/habits/value_objects.dart' as h;
import 'package:habit_tracking_test/infrastructure/habits/habit_dto.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

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
  Future<Either<HabitFailure, KtList<Habit>>> getBad() async {
    debugPrint('Get bad');
    if (await _connectivity.checkConnectivity() != ConnectivityResult.none) {
      final failureOrAll = await getAll();
      return failureOrAll.fold(
        (failure) => left(failure),
        (allHabits) =>
            right(allHabits.filter((habit) => habit.type == h.Type.bad())),
      );
    } else {
      return left(const HabitFailure.noInternetConnection());
    }
  }

  @override
  Future<Either<HabitFailure, KtList<Habit>>> getGood() async {
    debugPrint('Get good');
    if (await _connectivity.checkConnectivity() != ConnectivityResult.none) {
      final failureOrAll = await getAll();
      return failureOrAll.fold(
        (failure) => left(failure),
        (allHabits) =>
            right(allHabits.filter((habit) => habit.type == h.Type.good())),
      );
    } else {
      return left(const HabitFailure.noInternetConnection());
    }
  }

  Future<Either<HabitFailure, KtList<Habit>>> getAll() async {
    try {
      final result = await _dio.get('/habit');
      debugPrint(result.statusMessage);
      if (result.data != null) {
        final List data = result.data as List<dynamic>;

        final List<Map<String, dynamic>> mappedData = [];
        for (final element in data) {
          mappedData.add(element as Map<String, dynamic>);
        }

        final KtList<Habit> habits = KtList.from(mappedData.map((e) {
          return HabitDto.fromJson(e).toDomain();
        }));
        return right(habits);
      } else {
        return right(const KtList.empty());
      }
    } on DioError catch (e) {
      debugPrint(e.error.toString());
      return left(const HabitFailure.unexpected());
    }
  }
}
