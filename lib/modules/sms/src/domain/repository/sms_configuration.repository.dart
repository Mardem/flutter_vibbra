import 'package:vibbra_notifications/core/di/components/remote/response.dart';
import 'package:vibbra_notifications/modules/sms/src/data/remote/mappers/insert_sms_provider.mapper.dart';

abstract class SmsConfigurationRepository {
  Future<HttpResponse> save({required InsertSmsProviderMapper info});
}
