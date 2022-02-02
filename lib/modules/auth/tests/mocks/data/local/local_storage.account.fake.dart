import 'dart:convert';

import 'package:mockito/mockito.dart';
import 'package:vibbra_notifications/core/di/components/local/local_storage.dart';
import 'package:vibbra_notifications/modules/auth/tests/fixtures/data/local/account_local.service.dart';

class MockLocalStorageAccountValid extends Fake implements LocalStorage {
  @override
  Future<String?> get(String key) async {
    return jsonEncode(AccountLocalServiceFixture.validJson);
  }

  @override
  void set(String key, dynamic value) {}
}
