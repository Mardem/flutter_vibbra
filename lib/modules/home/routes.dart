import 'package:vibbra_notifications/core/routes/routes.dart';
import 'package:vibbra_notifications/modules/home/src/presentation/home/home.page.dart';

final routeHome = AppRoute(
  name: '/home',
  direction: NavigationType.fromLeft,
  page: const HomePage(),
);

final List<AppRoute> routesHomeModule = [
  routeHome,
];
