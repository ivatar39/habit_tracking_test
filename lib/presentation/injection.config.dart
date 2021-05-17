// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity/connectivity.dart' as _i3;
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../application/habits/habit_actor/habit_actor_bloc.dart' as _i8;
import '../application/habits/habit_form/habit_form_bloc.dart' as _i9;
import '../application/habits/habit_watcher/habit_watcher_bloc.dart' as _i10;
import '../application/main/main_bloc.dart' as _i7;
import '../domain/habits/i_habit_repository.dart' as _i5;
import '../infrastructure/core/api_injectable_module.dart' as _i11;
import '../infrastructure/habits/habit_repository.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final apiInjectableModule = _$ApiInjectableModule();
  gh.factory<_i3.Connectivity>(() => apiInjectableModule.connectivity);
  gh.factory<_i4.Dio>(() => apiInjectableModule.dio);
  gh.lazySingleton<_i5.IHabitRepository>(
      () => _i6.HabitRepository(get<_i4.Dio>(), get<_i3.Connectivity>()));
  gh.factory<_i7.MainBloc>(() => _i7.MainBloc());
  gh.factory<_i8.HabitActorBloc>(
      () => _i8.HabitActorBloc(get<_i5.IHabitRepository>()));
  gh.factory<_i9.HabitFormBloc>(
      () => _i9.HabitFormBloc(get<_i5.IHabitRepository>()));
  gh.factory<_i10.HabitWatcherBloc>(
      () => _i10.HabitWatcherBloc(get<_i5.IHabitRepository>()));
  return get;
}

class _$ApiInjectableModule extends _i11.ApiInjectableModule {}
