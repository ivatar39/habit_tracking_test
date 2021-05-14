import 'package:flutter/material.dart';
import 'package:habit_tracking_test/presentation/router/app_router.gr.dart';

class AppWidget extends StatelessWidget {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Habit Tracking',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
    );
  }
}
