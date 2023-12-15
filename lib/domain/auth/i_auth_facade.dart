import 'package:dartz/dartz.dart';
import 'package:flutter_ddd_project_with_freezed/domain/auth/value_objects.dart';
import 'package:flutter_ddd_project_with_freezed/domain/core/auth_failures.dart';
import 'package:meta/meta.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
}
