import 'package:vibbra_notifications/core/di/components/remote/response.dart';
import 'package:vibbra_notifications/core/di/inject.dart';
import 'package:vibbra_notifications/modules/auth/src/data/remote/mappers/login.mapper.dart';
import 'package:vibbra_notifications/modules/auth/src/domain/repository/account.repository.dart';

abstract class AccountInteractor {
  Future<HttpResponse<LoginMapper?>> login(
      {required String email, required String password});
}

class AccountInteractorImpl implements AccountInteractor {
  final _repository = inject<AccountRepository>();

  @override
  Future<HttpResponse<LoginMapper?>> login({
    required String email,
    required String password,
  }) {
    return _repository.login(email: email, password: password);
  }
}
