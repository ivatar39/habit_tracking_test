part of 'main_bloc.dart';

@freezed
class MainState with _$MainState {
  const factory MainState.initial() = Initial;

  const factory MainState.appLoaded() = AppLoaded;
}
