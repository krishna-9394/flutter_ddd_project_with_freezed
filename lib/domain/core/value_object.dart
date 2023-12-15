import 'package:dartz/dartz.dart';
import 'package:flutter_ddd_project_with_freezed/domain/core/errors.dart';
import 'package:flutter_ddd_project_with_freezed/domain/core/failures.dart';

abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  // isRight tells that value exist
  // isLeft tells that error exists
  isValid() => value.isRight();

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is ValueObject<T> && o.value == value;
  }

  T getOrCrash() {
    return value.fold(
      (left) => throw UnexpectedValueError(valueFailure: left),
      (right) => right,
    );
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value: $value';
}
