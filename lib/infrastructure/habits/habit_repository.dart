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
      try {
        final HabitDto dto = HabitDto.fromDomain(habit);
        // Removing local [UniqueId]
        final map = dto.toJson();
        map.remove('uid');
        final json = jsonEncode(map);
        debugPrint(json);
        // Creating [Habit] in API
        final result = await _dio.put('/habit', data: json);
        debugPrint(result.statusMessage);
        final responseData = result.data as Map<String, dynamic>;
        debugPrint(responseData.toString());
        // Saving habit with new [UniqueId] locally
        final newDto = dto.copyWith(uid: responseData['uid'].toString());
        await Hive.box<HabitDto>('habits').put(newDto.uid, newDto);
        return right(unit);
      } on DioError catch (e) {
        debugPrint(e.error.toString());
        debugPrint(e.message);
        debugPrint(e.response!.statusMessage);
        debugPrint(e.response!.data.toString());
        return left(
            HabitFailure.serverError(e.response?.statusMessage ?? '404'));
      } on Exception catch (e) {
        debugPrint(e.toString());
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
      try {
        final HabitDto dto = HabitDto.fromDomain(habit);

        final result = await _dio.put('/habit', data: jsonEncode(dto.toJson()));
        debugPrint(result.statusMessage);

        await Hive.box<HabitDto>('habits').put(dto.uid, dto);
        return right(unit);
      } on DioError catch (e) {
        debugPrint(e.error.toString());
        debugPrint(e.message);
        debugPrint(e.response!.data.toString());
        return left(
            HabitFailure.serverError(e.response?.statusMessage ?? '404'));
      } on Exception catch (e) {
        debugPrint(e.toString());
        return left(const HabitFailure.unexpected());
      }
    } else {
      return left(const HabitFailure.noInternetConnection());
    }
  }

  @override
  Future<Either<HabitFailure, KtList<Habit>>> read() async {
    debugPrint('Read habits');
    if (await _connectivity.checkConnectivity() != ConnectivityResult.none) {
      try {
        // Reading [Habit]'s from API
        final result = await _dio.get('/habit');
        debugPrint(result.statusMessage);
        debugPrint(result.data.toString());
        final data = result.data as List;

        final List<HabitDto> dtoList = [];
        for (final json in data) {
          final dto = HabitDto.fromJson(json as Map<String, dynamic>);
          dtoList.add(dto);
        }

        debugPrint(dtoList.toString());
        final box = await Hive.openBox<HabitDto>('habits');
        await box.putAll(Map.fromIterable(dtoList, key: (dto) => dto.uid));

        return right(KtList.from(dtoList.map((e) => e.toDomain())));
      } on DioError catch (e) {
        debugPrint(e.error.toString());
        debugPrint(e.message);
        debugPrint(e.response!.statusMessage);
        debugPrint(e.response!.data.toString());
        return left(
            HabitFailure.serverError(e.response?.statusMessage ?? '404'));
      } on Exception catch (e) {
        debugPrint(e.toString());
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
      try {
        final HabitDto dto = HabitDto.fromDomain(habit);

        final json = {'uid': dto.uid};
        debugPrint(json.toString());

        final result = await _dio.delete('/habit', data: jsonEncode(json));
        debugPrint(result.statusMessage);

        await Hive.box<HabitDto>('habits').delete(dto.uid);
        return right(unit);
      } on DioError catch (e) {
        debugPrint(e.error.toString());
        debugPrint(e.response!.data.toString());
        return left(
            HabitFailure.serverError(e.response?.statusMessage ?? '404'));
      } on Exception catch (e) {
        debugPrint(e.toString());
        return left(const HabitFailure.unexpected());
      }
    } else {
      return left(const HabitFailure.noInternetConnection());
    }
  }

  @override
  Stream<Either<HabitFailure, KtList<Habit>>> watchBad(
      {required bool isSortedByDate}) async* {
    debugPrint('Get bad date: $isSortedByDate');
    final habitDtoBox = Hive.box<HabitDto>('habits');

    final Stream<BoxEvent> stream =
        habitDtoBox.watch().startWith(BoxEvent(null, null, false));
    if (isSortedByDate) {
      yield* stream.map((event) => right(habitDtoBox.values
          .map((habitDto) => habitDto.toDomain())
          .toImmutableList()
          .filter((habit) => habit.type == Type.bad())
          .sortedBy((a) => a.dateCreated)));
    }
    yield* stream.map((event) => right(habitDtoBox.values
        .map((habitDto) => habitDto.toDomain())
        .toImmutableList()
        .filter((habit) => habit.type == Type.bad())));
  }

  @override
  Stream<Either<HabitFailure, KtList<Habit>>> watchGood(
      {required bool isSortedByDate}) async* {
    debugPrint('Get good date: $isSortedByDate');
    final habitDtoBox = Hive.box<HabitDto>('habits');

    final Stream stream =
        habitDtoBox.watch().startWith(BoxEvent(null, null, false));

    if (isSortedByDate) {
      yield* stream.map((event) => right(habitDtoBox.values
          .map((habitDto) => habitDto.toDomain())
          .toImmutableList()
          .filter((habit) => habit.type == Type.good())
          .sortedBy((a) => a.dateCreated)));
    }
    yield* stream.map((event) => right(habitDtoBox.values
        .map((habitDto) => habitDto.toDomain())
        .toImmutableList()
        .filter((habit) => habit.type == Type.good())));
  }

  @override
  Future<Either<HabitFailure, String>> complete(Habit habit) async {
    debugPrint('Complete $habit');
    if (await _connectivity.checkConnectivity() != ConnectivityResult.none) {
      try {
        final datesList = habit.datesList;
        final currentTime = DateTime.now();
        datesList.getOrCrash().toMutableList().add(currentTime);
        final completedHabit = habit.copyWith(
          count: Count((habit.count.number + 1).toString()),
          datesList: datesList,
        );

        final HabitDto dto = HabitDto.fromDomain(completedHabit);
        final map = {
          'date': currentTime.millisecondsSinceEpoch,
          'habit_uid': dto.uid,
        };
        final response = await _dio.post(
          '/habit_done',
          data: jsonEncode(map),
        );
        debugPrint(response.statusMessage);

        await Hive.box<HabitDto>('habits').put(dto.uid, dto);

        return right(_getMotivationalBark(completedHabit));
      } on DioError catch (e) {
        debugPrint(e.error.toString());
        debugPrint(e.response!.data.toString());
        return left(
            HabitFailure.serverError(e.response?.statusMessage ?? '404'));
      } on Exception catch (e) {
        debugPrint(e.toString());
        return left(const HabitFailure.unexpected());
      }
    } else {
      return left(const HabitFailure.noInternetConnection());
    }
  }

  @override
  Future<Either<HabitFailure, KtList<Habit>>> sortByDate() async {
    debugPrint('Sort by date');
    try {
      final dtoList = Hive.box<HabitDto>('habits').values.toList();
      dtoList.sort((a, b) => a.date.compareTo(b.date));
      return right(KtList.from(dtoList.map((e) => e.toDomain())));
    } on Exception catch (e) {
      debugPrint(e.toString());
      return left(const HabitFailure.unexpected());
    }
  }
}

String _getMotivationalBark(Habit habit) {
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
