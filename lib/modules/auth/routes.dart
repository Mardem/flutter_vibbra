import 'package:vibbra_notifications/core/routes/routes.dart';
import 'package:vibbra_notifications/modules/auth/src/presentation/login/login.page.dart';

final routeLogin = AppRoute(
  name: '/login',
  direction: NavigationType.fromLeft,
  page: const LoginPage(),
);

final List<AppRoute> routeAuthModule = [
  routeLogin,
];
