import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

import 'failures.dart';

Either<ValueFailure<String>, String> validateMaxStringLength(
  String input,
  int maxLength,
) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(ValueFailure.exceedingLength(
      failedValue: input,
      max: maxLength,
    ));
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.empty(
      failedValue: input,
    ));
  }
}

Either<ValueFailure<String>, String> validateSingleLine(String input) {
  if (!input.contains('\n')) {
    return right(input);
  } else {
    return left(ValueFailure.multiline(
      failedValue: input,
    ));
  }
}

Either<ValueFailure<int>, int> validateMaxInt(
  int input,
  int maxLength,
) {
  if (input <= maxLength) {
    return right(input);
  } else {
    return left(ValueFailure.exceedingNumber(
      failedValue: input,
      max: maxLength,
    ));
  }
}

Either<ValueFailure<String>, String> validateStringUnsignedInt(String input) {
  final tryParsedInput = int.tryParse(input);
  if (tryParsedInput != null && tryParsedInput >= 0) {
    return right(input);
  } else {
    return left(ValueFailure.notUnsignedInt(
      failedValue: input,
    ));
  }
}

Either<ValueFailure<KtList<T>>, KtList<T>> validateMaxListLength<T>(
  KtList<T> input,
  int maxLength,
) {
  if (input.size <= maxLength) {
    return right(input);
  } else {
    return left(ValueFailure.listTooLong(
      failedValue: input,
      max: maxLength,
    ));
  }
}
