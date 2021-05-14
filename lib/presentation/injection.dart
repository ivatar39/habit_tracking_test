import 'package:get_it/get_it.dart';
import 'package:habit_tracking_test/presentation/injection.config.dart';
import 'package:injectable/injectable.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
void configureInjection(String env) {
  $initGetIt(getIt, environment: env);
}
