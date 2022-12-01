import 'package:dio/dio.dart';
import 'package:test_driven_development_example/entities/user.dart';
import 'package:test_driven_development_example/repository_i/i_user_repository.dart';

class UserRemoteRepository implements IUserRepository {
  late Dio dio;

  UserRemoteRepository({Dio? dio}) {
    this.dio = dio ?? Dio();
  }

  @override
  Future<User?> getUser(int id) async {
    try {
      var response = await dio.get('https://reqres.in/api/users/$id');
      if (response.statusCode == 200) {
        return User(
          id: response.data['data']['id'],
          name: response.data['data']['first_name'] +
              ' ' +
              response.data['data']['last_name'],
        );
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }
}
