# flutter_ddd_project_with_freezed

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Important points to keep in mind

@freezed key word is important, as without it we cannot generate the *.freezed.dart
for *.g.dart we need to have json_serializable and json_annotation package also along with freezed and build_runner


To generate the SHA1 finger-print 
1) open cmd 
2) go to C\Program File\java\bin
3) keytool -list -v -keystore "%USERPROFILE%\.android\debug.keystore" -alias androiddebugkey -storepass android -keypass android
4) you will get the finger print

