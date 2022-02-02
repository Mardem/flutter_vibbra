import 'package:vibbra_notifications/core/di/components/remote/response.dart';
import 'package:vibbra_notifications/modules/auth/src/data/remote/mappers/login.mapper.dart';

abstract class AccountRepository {
  Future<HttpResponse<LoginMapper?>> login({
    required String email,
    required String password,
  });
}
