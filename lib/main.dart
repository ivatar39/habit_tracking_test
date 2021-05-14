import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit_tracking_test/application/main/main_bloc.dart';
import 'package:injectable/injectable.dart';

import 'presentation/app_widget.dart';
import 'presentation/injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.dev);

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (_) => getIt<MainBloc>()..add(const MainEvent.appOpened())),
      ],
      child: AppWidget(),
    ),
  );
}
