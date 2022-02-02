import 'package:vibbra_notifications/core/routes/routes.dart';
import 'package:vibbra_notifications/modules/auth/src/presentation/login/login.page.dart';
import 'package:vibbra_notifications/modules/auth/src/presentation/register/register.page.dart';

final routeLogin = AppRoute(
  name: '/login',
  direction: NavigationType.fromLeft,
  page: const LoginPage(),
);

final routeRegister = AppRoute(
  name: '/register',
  direction: NavigationType.fromLeft,
  page: const RegisterPage(),
);

final List<AppRoute> routeAuthModule = [routeLogin, routeRegister];
