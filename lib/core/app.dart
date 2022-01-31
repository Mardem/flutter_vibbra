import 'package:flutter/material.dart';
import 'package:vibbra_notifications/core/routes/routes.dart';
import 'package:vibbra_notifications/design_system/values/theme.dart';
import 'package:vibbra_notifications/modules/example/routes.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      initialRoute: routeExample.name,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
