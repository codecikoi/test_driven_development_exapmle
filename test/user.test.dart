import 'package:flutter_test/flutter_test.dart';
import 'package:test_driven_development_example/entities/user.dart';

void main() {
  group('user test', () {
    User user = User();

    test('user\'s id type is int', () {
      expect(
        user.id,
        isA<int>(),
      );
    });
    test('user\'s id type is String', () {
      expect(
        user.name,
        isA<String>(),
      );
    });

    test('default id = 0, default name = "no name"', () {
      expect(user.id, equals(0));
      expect(user.name, equals('no name'));
    });
  });

  group('custom user test', () {
    User user1 = User(id: 1);
    User user2 = User(name: 'test');
    User user3 = User(id: 1, name: 'test');

    test('single parameter (id) is valid', () {
      expect(user1.id, equals(1));
      expect(user1.name, equals('no name'));
    });
    test('single parameter (name) is valid', () {
      expect(user2.id, equals(0));
      expect(user2.name, equals('test'));
    });
    test('all params are correct', () {
      expect(user3.id, equals(1));
      expect(user3.name, equals('test'));
    });
  });
}
