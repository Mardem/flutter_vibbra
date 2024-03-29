import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vibbra_notifications/core/routes/routes.dart';
import 'package:vibbra_notifications/modules/splash/routes.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: routeSplash.name,
        onGenerateRoute: RouteGenerator.generateRoute,
        builder: (context, widget) {
          //add this line
          ScreenUtil.setContext(context);
          return MediaQuery(
            //Setting font does not change with system font size
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: widget ?? Container(),
          );
        },
      ),
    );
  }
}
