import 'package:mockito/mockito.dart';
import 'package:vibbra_notifications/firebase/src/auth/login_types.dart';
import 'package:vibbra_notifications/firebase/src/auth/social_info.dart';
import 'package:vibbra_notifications/modules/auth/src/data/remote/services/google.service.dart';
import 'package:vibbra_notifications/modules/auth/tests/fixtures/data/remote/services/google.service.fixture.dart';

class MockGoogleAuthServiceValid extends Fake implements GoogleAuthService {
  @override
  Future<SocialInfo> login() async {
    return GoogleServiceValid.login();
  }

  @override
  Future<void> logout() async {}

  @override
  LoginType loginType() {
    return LoginType.google;
  }
}

class MockGoogleAuthServiceInvalid extends Fake implements GoogleAuthService {
  @override
  Future<SocialInfo> login() async {
    return GoogleServiceInvalid.invalid();
  }

  @override
  LoginType loginType() {
    return LoginType.google;
  }
}
