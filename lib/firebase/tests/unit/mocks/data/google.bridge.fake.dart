import 'package:mockito/mockito.dart';
import 'package:vibbra_notifications/firebase/src/auth/google.bridge.dart';
import 'package:vibbra_notifications/firebase/src/auth/mapper/google_signin.mapper.dart';
import 'package:vibbra_notifications/firebase/tests/unit/fixtures/data/google.bridge.fixture.dart';

class MockGoogleBridgeValid extends Fake implements GoogleAuthBridge {
  @override
  Future<GoogleSignInUserDetails?> signIn() async {
    return GoogleBridgeValid.userDetails();
  }
}

class MockGoogleBridgeException extends Fake implements GoogleAuthBridge {
  @override
  Future<GoogleSignInUserDetails?> signIn() async {
    return GoogleBridgeException.userDetails();
  }
}
