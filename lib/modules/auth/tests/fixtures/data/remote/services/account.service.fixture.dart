import 'package:faker/faker.dart';

class AccountServiceFixture {
  static String email = 'marden@gmail.com';
  static String password = '123456';

  static Map<String, dynamic> resultFake() {
    var faker = Faker();

    return {
      "token": faker.jwt.secret,
      "user": {
        "id": faker.guid.guid(),
        "name": faker.person.name(),
        "email": faker.internet.safeEmail(),
      }
    };
  }
}
