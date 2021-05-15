import 'package:dartz/dartz.dart';
import 'package:habit_tracking_test/domain/core/failures.dart';
import 'package:habit_tracking_test/domain/core/value_objects.dart';
import 'package:habit_tracking_test/domain/core/value_validators.dart';
import 'package:kt_dart/collection.dart';
import 'package:uuid/uuid.dart';

class UniqueId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UniqueId() {
    return UniqueId._(
      right(const Uuid().v1()),
    );
  }

  factory UniqueId.fromUniqueString(String uniqueId) {
    return UniqueId._(right(uniqueId));
  }

  const UniqueId._(this.value);
}

class HabitName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 30;

  factory HabitName(String input) {
    return HabitName._(
      validateMaxStringLength(input, maxLength)
          .flatMap(validateStringNotEmpty)
          .flatMap(validateSingleLine),
    );
  }

  const HabitName._(this.value);
}

class HabitDescription extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 200;

  factory HabitDescription(String input) {
    return HabitDescription._(
      validateMaxStringLength(input, maxLength).flatMap(
        validateStringNotEmpty,
      ),
    );
  }

  const HabitDescription._(this.value);
}

class Priority extends ValueObject<String> {
  static const List<String> predefinedPriorities = ['Low', 'Medium', 'High'];
  @override
  final Either<ValueFailure<String>, String> value;

  factory Priority.low() => Priority(predefinedPriorities[0]);

  factory Priority.medium() => Priority(predefinedPriorities[1]);

  factory Priority.high() => Priority(predefinedPriorities[2]);

  factory Priority(String input) {
    return Priority._(
      right(input),
    );
  }

  const Priority._(this.value);
}

class Type extends ValueObject<String> {
  static const List<String> predefinedTypes = ['Good', 'Bad'];
  @override
  final Either<ValueFailure<String>, String> value;

  factory Type.bad() => Type(predefinedTypes.last);

  factory Type.good() => Type(predefinedTypes.first);

  factory Type(String input) {
    return Type._(
      right(input),
    );
  }

  const Type._(this.value);
}

class Count extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Count.zero() => Count('0');

  factory Count(String input) {
    return Count._(validateStringUnsignedInt(input));
  }

  int get number {
    return int.parse(value.getOrElse(() => '0'));
  }

  const Count._(this.value);
}

class Frequency extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Frequency.zero() => Frequency('0');

  factory Frequency(String input) {
    return Frequency._(validateStringUnsignedInt(input));
  }

  int get number {
    return int.parse(value.getOrElse(() => '0'));
  }

  const Frequency._(this.value);
}

class DatesList extends ValueObject<KtList<DateTime>> {
  @override
  final Either<ValueFailure<KtList<DateTime>>, KtList<DateTime>> value;

  static const maxLength = 1000;

  factory DatesList.empty() => DatesList(emptyList());

  factory DatesList(KtList<DateTime> input) {
    return DatesList._(
      validateMaxListLength(
        input,
        maxLength,
      ),
    );
  }

  const DatesList._(this.value);

  int get length {
    return value.getOrElse(() => emptyList()).size;
  }

  bool get isFull {
    return length == maxLength;
  }
}
