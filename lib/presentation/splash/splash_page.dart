import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit_tracking_test/application/main/main_bloc.dart';
import 'package:habit_tracking_test/presentation/router/app_router.gr.dart';
import 'package:habit_tracking_test/presentation/splash/widgets/splash_body.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<MainBloc, MainState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          appLoaded: (_) {
            context.router.replace(const HabitsPageRoute());
          },
        );
      },
      child: const Scaffold(
        body: SplashBody(),
      ),
    );
  }
}
