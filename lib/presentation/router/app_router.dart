import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:habit_tracking_test/presentation/splash/splash_page.dart';

@MaterialAutoRouter(
  routes: [
    AutoRoute(page: SplashPage, initial: true),
  ],
)
class $AppRouter {}
