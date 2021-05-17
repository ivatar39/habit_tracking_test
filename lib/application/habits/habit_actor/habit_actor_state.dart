part of 'habit_actor_bloc.dart';

@freezed
class HabitActorState with _$HabitActorState {
  const factory HabitActorState.initial() = _Initial;

  const factory HabitActorState.actionProgress() = _ActionProgress;

  const factory HabitActorState.deleteFailure(HabitFailure habitFailure) =
      _DeleteFailure;

  const factory HabitActorState.deleteSuccess() = _DeleteSuccess;

  const factory HabitActorState.completeFailure(HabitFailure habitFailure) =
      _CompleteFailure;

  const factory HabitActorState.completeSuccess({
    required bool isGood,
    required String completionBark,
  }) = _CompleteSuccess;
}
