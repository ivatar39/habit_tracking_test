import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:habit_tracking_test/infrastructure/habits/token.dart';
import 'package:injectable/injectable.dart';

const String kBaseApiUrl = 'https://droid-test-server.doubletapp.ru/api';

@module
abstract class ApiInjectableModule {
  @lazySingleton
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: kBaseApiUrl,
      connectTimeout: 5000,
      receiveTimeout: 3000,
      headers: {
        'Authorization': kApiToken, // Use your own token if you have one
        'accept': 'application/json',
      },
    ),
  );
  @lazySingleton
  final Connectivity connectivity = Connectivity();
}
