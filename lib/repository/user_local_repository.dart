import 'package:test_driven_development_example/entities/user.dart';
import 'package:test_driven_development_example/repository_i/i_user_repository.dart';

class LocalUserRepository implements IUserRepository {
  @override
  Future<User?> getUser(int id) async {
    return User();
  }
}