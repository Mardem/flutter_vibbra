import 'package:vibbra_notifications/core/di/components/remote/response.dart';
import 'package:vibbra_notifications/modules/auth/src/data/remote/mappers/inser_register.mapper.dart';
import 'package:vibbra_notifications/modules/auth/src/data/remote/mappers/login.mapper.dart';

abstract class AccountRepository {
  Future<HttpResponse<LoginMapper?>> login({
    required String email,
    required String password,
  });

  Future<HttpResponse> register({required InsertRegisterMapper user});
  HttpResponse keepConnected({required bool status});
  Future<HttpResponse<LoginMapper?>> getLocalUser();
}
