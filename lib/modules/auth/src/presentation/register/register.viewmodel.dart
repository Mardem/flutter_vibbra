import 'package:rxdart/rxdart.dart';
import 'package:vibbra_notifications/core/base/viewmodel.base.dart';
import 'package:vibbra_notifications/core/di/components/remote/response.dart';
import 'package:vibbra_notifications/core/di/inject.dart';
import 'package:vibbra_notifications/modules/auth/src/data/remote/mappers/inser_register.mapper.dart';
import 'package:vibbra_notifications/modules/auth/src/domain/interactor/account.interactor.dart';

class RegisterViewModel extends BaseViewModel {
  final _interactor = inject<AccountInteractor>();

  final _email = BehaviorSubject<String>.seeded('');
  Stream<String> get email => _email.stream;
  void setEmail(String value) => _email.add(value);

  final _password = BehaviorSubject<String>.seeded('');
  Stream<String> get password => _password.stream;
  void setPassword(String value) => _password.add(value);

  final _name = BehaviorSubject<String>.seeded('');
  Stream<String> get name => _name.stream;
  void setName(String value) => _name.add(value);

  final _company = BehaviorSubject<String>.seeded('');
  Stream<String> get company => _company.stream;
  void setCompany(String value) => _company.add(value);

  final _phone = BehaviorSubject<String>.seeded('');
  Stream<String> get phone => _phone.stream;
  void setPhone(String value) => _phone.add(value);

  final _address = BehaviorSubject<String>.seeded('');
  Stream<String> get address => _address.stream;
  void setAddress(String value) => _address.add(value);

  register() async {
    setLoading(true);

    InsertRegisterMapper user = InsertRegisterMapper(
      name: _name.value,
      companyAddress: _company.value,
      companyName: _company.value,
      email: _email.value,
      password: _password.value,
      phoneNumber: _phone.value,
    );

    HttpResponse res = await _interactor.register(user: user);

    if (res.isSuccess) {
      setSuccess(res.message);
    } else {
      setError(res.message);
    }

    setLoading(false);
  }
}