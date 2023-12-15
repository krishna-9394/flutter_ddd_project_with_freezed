import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ddd_project_with_freezed/injection.dart';
import 'package:flutter_ddd_project_with_freezed/presentation/core/app_widget.dart';
import 'package:injectable/injectable.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  configureInjects(Environment.prod);
  runApp(const AppWidget());
}
