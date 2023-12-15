import 'package:flutter_ddd_project_with_freezed/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:flutter_ddd_project_with_freezed/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@injectableInit
void configureInjects(String env) => getIt.init(environment: env);
// to generate the code we have to run the command $ flutter pub run build_runner watch --delete-conflicting-outputs
