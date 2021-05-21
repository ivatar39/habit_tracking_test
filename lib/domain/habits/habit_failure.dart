import 'package:freezed_annotation/freezed_annotation.dart';

part 'habit_failure.freezed.dart';

@freezed
class HabitFailure with _$HabitFailure {
  const factory HabitFailure.unexpected() = _Unexpected;

  const factory HabitFailure.insufficientPermission() = _InsufficientPermission;

  const factory HabitFailure.unableToUpdate() = _UnableToUpdate;

  const factory HabitFailure.noInternetConnection() = _NoInternetConnection;

  const factory HabitFailure.serverError(String code) = _ServerError;
}
