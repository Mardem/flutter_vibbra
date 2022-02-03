import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vibbra_notifications/core/app.dart';
import 'package:vibbra_notifications/core/di/inject.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await startModules();
  runApp(const App());
}
