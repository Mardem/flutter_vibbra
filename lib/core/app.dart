import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vibbra_notifications/core/routes/routes.dart';
import 'package:vibbra_notifications/modules/auth/routes.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: routeLogin.name,
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
