import 'package:vibbra_notifications/core/di/inject.dart';
import 'package:vibbra_notifications/modules/home/src/presentation/home/home.viewmodel.dart';

Future<void> startHomeModules() async {
  // Interactors

  // Repositories

  // ViewModels
  inject.registerSingleton<HomeViewModel>(HomeViewModel());

  // Services
}
