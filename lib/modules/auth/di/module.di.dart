import 'package:vibbra_notifications/core/di/inject.dart';
import 'package:vibbra_notifications/modules/auth/src/data/remote/services/google.service.dart';
import 'package:vibbra_notifications/modules/auth/src/domain/interactor/social.interactor.dart';
import 'package:vibbra_notifications/modules/auth/src/domain/repository/social.repository.dart';
import 'package:vibbra_notifications/modules/auth/src/presentation/login/login.viewmodel.dart';

Future<void> startAuthModule() async {
  // Interactors
  inject.registerFactory<SocialLoginInteractor>(() => SocialLoginImpl());

  // Repositories
  inject.registerFactory<SocialRepository>(() => SocialRepository());

  // ViewModels
  inject.registerFactory<LoginViewModel>(() => LoginViewModel());

  // Services
  inject.registerFactory<GoogleAuthService>(() => GoogleAuthServiceImpl());
}
