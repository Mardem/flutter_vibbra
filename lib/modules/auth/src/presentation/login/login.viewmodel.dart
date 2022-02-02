import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:vibbra_notifications/core/base/viewmodel.base.dart';
import 'package:vibbra_notifications/core/di/components/remote/response.dart';
import 'package:vibbra_notifications/core/di/inject.dart';
import 'package:vibbra_notifications/firebase/src/auth/social_info.dart';
import 'package:vibbra_notifications/modules/auth/src/data/remote/mappers/login.mapper.dart';
import 'package:vibbra_notifications/modules/auth/src/data/remote/services/google.service.dart';
import 'package:vibbra_notifications/modules/auth/src/domain/interactor/account.interactor.dart';
import 'package:vibbra_notifications/modules/auth/src/domain/interactor/social.interactor.dart';
import 'package:vibbra_notifications/modules/home/routes.dart';
import 'package:vibbra_notifications/modules/home/src/presentation/home/home.viewmodel.dart';

class LoginViewModel extends BaseViewModel {
  final _socialInteractor = inject<SocialLoginInteractor>();
  final _accountInteractor = inject<AccountInteractor>();
  final _homeVM = inject<HomeViewModel>();

  final _email = BehaviorSubject<String>.seeded('');
  Stream<String> get email => _email.stream;
  void setEmail(String value) => _email.add(value);

  final _password = BehaviorSubject<String>.seeded('');
  Stream<String> get password => _password.stream;
  void setPassword(String value) => _password.add(value);

  final _keepLogged = BehaviorSubject<bool>.seeded(false);
  Stream<bool> get logged => _keepLogged.stream;
  void setLogged(bool value) => _keepLogged.add(value);

  googleLogin() async {
    _socialInteractor.setProvider(
      inject<GoogleAuthService>(),
    );
    SocialInfo res = await _socialInteractor.login();

    if (res.success) {
      setSuccess('Bem vindo, ${res.name}!');
    }
  }

  login(context) async {
    setLoading(true);

    HttpResponse<LoginMapper?> res = await _accountInteractor.login(
      email: _email.value,
      password: _password.value,
    );

    if (res.isSuccess) {
      setSuccess('Bem vindo, ${res.data!.user!.name}!');

      _homeVM.setName(res.data!.user!.name);

      Navigator.pushNamed(context, routeHome.name);
    } else {
      setError(res.message);
    }

    setLoading(false);
  }

  keepConnected(bool? val) {
    setLogged(val ?? false);
    _accountInteractor.keepConnected(status: val ?? false);
  }
}
