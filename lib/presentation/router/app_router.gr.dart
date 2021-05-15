// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../../domain/habits/habit.dart' as _i6;
import '../habits/habit_form/habit_form_page.dart' as _i5;
import '../habits/habit_overview/habits_overview_page.dart' as _i4;
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
    HabitsOverviewPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.HabitsOverviewPage();
        }),
    HabitFormPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<HabitFormPageRouteArgs>();
          return _i5.HabitFormPage(
              key: args.key, editedHabit: args.editedHabit);
        },
        fullscreenDialog: true)
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashPageRoute.name, path: '/'),
        _i1.RouteConfig(HabitsOverviewPageRoute.name,
            path: '/habits-overview-page'),
        _i1.RouteConfig(HabitFormPageRoute.name, path: '/habit-form-page')
      ];
}

class SplashPageRoute extends _i1.PageRouteInfo {
  const SplashPageRoute() : super(name, path: '/');

  static const String name = 'SplashPageRoute';
}

class HabitsOverviewPageRoute extends _i1.PageRouteInfo {
  const HabitsOverviewPageRoute() : super(name, path: '/habits-overview-page');

  static const String name = 'HabitsOverviewPageRoute';
}

class HabitFormPageRoute extends _i1.PageRouteInfo<HabitFormPageRouteArgs> {
  HabitFormPageRoute({_i2.Key? key, required _i6.Habit? editedHabit})
      : super(name,
            path: '/habit-form-page',
            args: HabitFormPageRouteArgs(key: key, editedHabit: editedHabit));

  static const String name = 'HabitFormPageRoute';
}

class HabitFormPageRouteArgs {
  const HabitFormPageRouteArgs({this.key, required this.editedHabit});

  final _i2.Key? key;

  final _i6.Habit? editedHabit;
}
