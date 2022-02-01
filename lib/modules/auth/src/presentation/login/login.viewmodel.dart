import 'package:vibbra_notifications/core/base/viewmodel.base.dart';
import 'package:vibbra_notifications/core/di/inject.dart';
import 'package:vibbra_notifications/firebase/src/auth/social_info.dart';
import 'package:vibbra_notifications/modules/auth/src/data/remote/services/google.service.dart';
import 'package:vibbra_notifications/modules/auth/src/domain/interactor/social.interactor.dart';

class LoginViewModel extends BaseViewModel {
  final _socialInteractor = inject<SocialLoginInteractor>();

  googleLogin() async {
    _socialInteractor.setProvider(
      inject<GoogleAuthService>(),
    );
    SocialInfo res = await _socialInteractor.login();

    if (res.success) {
      setSuccess('Bem vindo, ${res.name}!');
    }
  }
}
