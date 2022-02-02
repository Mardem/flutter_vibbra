import 'package:vibbra_notifications/core/base/urls.dart';

class SmsUrls {
  static String saveProvider(String id) {
    return '${BaseUrls.host}/apps/$id/sms/settings';
  }
}
