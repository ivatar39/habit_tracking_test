import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit_tracking_test/application/main/main_bloc.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

import 'infrastructure/habits/habit_dto.dart';
import 'presentation/app_widget.dart';
import 'presentation/injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDirectory =
      await path_provider.getApplicationDocumentsDirectory();
  Hive.init(appDocumentDirectory.path);
  Hive.registerAdapter(HabitDtoAdapter());

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
