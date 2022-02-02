import 'package:vibbra_notifications/core/di/components/remote/response.dart';
import 'package:vibbra_notifications/core/di/inject.dart';
import 'package:vibbra_notifications/modules/sms/src/data/remote/mappers/insert_sms_provider.mapper.dart';
import 'package:vibbra_notifications/modules/sms/src/domain/repository/sms_configuration.repository.dart';

abstract class SmsConfigurationInteractor {
  Future<HttpResponse> save({required InsertSmsProviderMapper info});
}

class SmsConfigurationInteractorImpl implements SmsConfigurationInteractor {
  final _repository = inject<SmsConfigurationRepository>();

  @override
  Future<HttpResponse> save({required InsertSmsProviderMapper info}) {
    return _repository.save(info: info);
  }
}
