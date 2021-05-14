// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../habits/add_habit_page.dart' as _i5;
import '../habits/habits_page.dart' as _i4;
import '../splash/splash_page.dart' as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.SplashPage();
        }),
    HabitsPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.HabitsPage();
        }),
    AddHabitPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.AddHabitPage();
        },
        fullscreenDialog: true)
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashPageRoute.name, path: '/'),
        _i1.RouteConfig(HabitsPageRoute.name, path: '/habits-page'),
        _i1.RouteConfig(AddHabitPageRoute.name, path: '/add-habit-page')
      ];
}

class SplashPageRoute extends _i1.PageRouteInfo {
  const SplashPageRoute() : super(name, path: '/');

  static const String name = 'SplashPageRoute';
}

class HabitsPageRoute extends _i1.PageRouteInfo {
  const HabitsPageRoute() : super(name, path: '/habits-page');

  static const String name = 'HabitsPageRoute';
}

class AddHabitPageRoute extends _i1.PageRouteInfo {
  const AddHabitPageRoute() : super(name, path: '/add-habit-page');

  static const String name = 'AddHabitPageRoute';
}
