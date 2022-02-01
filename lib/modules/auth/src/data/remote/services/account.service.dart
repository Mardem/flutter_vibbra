import 'package:vibbra_notifications/core/di/components/remote/http_client.dart';
import 'package:vibbra_notifications/core/di/components/remote/response.dart';
import 'package:vibbra_notifications/core/di/inject.dart';

abstract class AccountService {
  Future<HttpResponse> login({required email, required password});
}

class AccountServiceImpl implements AccountService {
  final _client = inject<HttpClient>();

  @override
  Future<HttpResponse> login({required email, required password}) async {
    HttpResponse response = HttpResponse();
    try {
      await Future.delayed(Duration(seconds: 2));
    } catch (e) {}
    return response;
  }
}
