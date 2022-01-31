import 'package:vibbra_notifications/core/routes/routes.dart';
import 'package:vibbra_notifications/modules/example/src/presentation/example/example.page.dart';

final routeExample = AppRoute(
  name: '/login',
  direction: NavigationType.fromLeft,
  page: const ExamplePage(),
);

final List<AppRoute> routesExampleModule = [
  routeExample,
];
