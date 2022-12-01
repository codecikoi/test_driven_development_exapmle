
import 'package:dio/dio.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_driven_development_example/entities/user.dart';
import 'package:test_driven_development_example/repository/user_local_repository.dart';
import 'package:test_driven_development_example/repository_i/i_user_repository.dart';


class MockDio extends Mock implements Dio {}

void main() {

  test('get local user repository (success)', () async {
    LocalUserRepository localUserRepository = LocalUserRepository();

    User? user = await localUserRepository.getUser(12);

    expect(localUserRepository, isA<IUserRepository>(),);
    expect(user?.id, equals(12),);
  });
}
