import 'package:vibbra_notifications/core/routes/routes.dart';
import 'package:vibbra_notifications/modules/splash/src/presentation/splashscreen/splashscreen.page.dart';

final routeSplash = AppRoute(
  name: '/splashscreen',
  direction: NavigationType.fromLeft,
  page: const SplashPage(),
);

final List<AppRoute> routesSplashModule = [
  routeSplash,
];
