import 'package:vibbra_notifications/core/di/inject.dart';
import 'package:vibbra_notifications/firebase/src/auth/google.bridge.dart';

import '../firebase.dart';

Future<void> startFirebaseModule() async {
  //Firebase Core
  final firebase = FirebaseCoreService();
  await firebase.initialize();

  inject.registerSingleton<FirebaseCoreService>(firebase);

  inject.registerFactory<GoogleAuthBridge>(() => GoogleAuthBridgeImpl());
}
