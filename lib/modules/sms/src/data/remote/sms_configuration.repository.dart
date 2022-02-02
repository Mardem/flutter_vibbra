import 'package:vibbra_notifications/core/di/components/remote/response.dart';
import 'package:vibbra_notifications/core/di/inject.dart';
import 'package:vibbra_notifications/modules/sms/src/data/remote/mappers/insert_sms_provider.mapper.dart';
import 'package:vibbra_notifications/modules/sms/src/domain/repository/sms_configuration.repository.dart';

import 'services/sms.service.dart';

class SmsConfigurationRepositoryImpl implements SmsConfigurationRepository {
  final _service = inject<SmsService>();

  @override
  Future<HttpResponse> save({required InsertSmsProviderMapper info}) {
    return _service.save(info: info);
  }
}
