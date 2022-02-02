import 'package:vibbra_notifications/core/di/components/remote/response.dart';
import 'package:vibbra_notifications/core/di/inject.dart';
import 'package:vibbra_notifications/modules/auth/src/data/remote/mappers/inser_register.mapper.dart';
import 'package:vibbra_notifications/modules/auth/src/data/remote/mappers/login.mapper.dart';
import 'package:vibbra_notifications/modules/auth/src/data/remote/services/account.service.dart';
import 'package:vibbra_notifications/modules/auth/src/domain/repository/account.repository.dart';

class AccountRepositoryImpl implements AccountRepository {
  final _accountService = inject<AccountService>();

  @override
  Future<HttpResponse<LoginMapper?>> login({
    required String email,
    required String password,
  }) {
    return _accountService.login(email: email, password: password);
  }

  @override
  Future<HttpResponse> register({required InsertRegisterMapper user}) {
    return _accountService.register(user: user);
  }
}
