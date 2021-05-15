import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:habit_tracking_test/presentation/habits/habit_form/habit_form_page.dart';
import 'package:habit_tracking_test/presentation/habits/habit_overview/habits_overview_page.dart';
import 'package:habit_tracking_test/presentation/splash/splash_page.dart';

@MaterialAutoRouter(
  routes: [
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(
      page: HabitsOverviewPage,
    ),
    AutoRoute(page: HabitFormPage, fullscreenDialog: true),
  ],
)
class $AppRouter {}
