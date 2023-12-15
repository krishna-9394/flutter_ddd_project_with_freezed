import 'package:flutter_ddd_project_with_freezed/domain/core/failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError({required this.valueFailure});

  @override
  String toString() {
    const explanation =
        "Encountered a ValueFailure at an Unrecoverable point. Terminating.";
    return Error.safeToString('$explanation Failure was $valueFailure');
  }
}
