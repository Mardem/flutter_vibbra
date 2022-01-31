import 'package:flutter/material.dart';
import 'package:vibbra_notifications/core/app.dart';
import 'package:vibbra_notifications/core/di/inject.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await startModules();
  runApp(const App());
}
