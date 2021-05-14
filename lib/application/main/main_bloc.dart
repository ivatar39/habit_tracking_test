import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'main_bloc.freezed.dart';

part 'main_event.dart';

part 'main_state.dart';

@injectable
class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(const MainState.initial());

  @override
  Stream<MainState> mapEventToState(MainEvent event) async* {
    yield* event.map(
      appOpened: (e) async* {
        // Waiting time for testing
        await Future.delayed(const Duration(seconds: 1));
        yield const MainState.appLoaded();
      },
    );
  }
}
