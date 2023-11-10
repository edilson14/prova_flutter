import 'package:capture_text/modules/login/store/login_store.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:capture_text/core/messages/messages.dart';

void main() {
  group(
    'LoginStore Tests',
    () {
      late LoginStore loginStore;

      setUp(() {
        loginStore = LoginStore();
      });

      test('Login validation should return error for empty input', () {
        expect(loginStore.validateLogin(null), equals(AppMessages.required));
        expect(loginStore.validateLogin(''), equals(AppMessages.required));
      });

      test('Login validation should return error for space at the end', () {
        expect(
            loginStore.validateLogin('user '), equals(AppMessages.spaceAtEnd));
      });

      test('Password validation should return error for empty input', () {
        expect(loginStore.validatePassWord(null), equals(AppMessages.required));
        expect(loginStore.validatePassWord(''), equals(AppMessages.required));
      });

      test('Password validation should return error for less than 2 characters',
          () {
        expect(loginStore.validatePassWord('a'),
            equals(AppMessages.moreThanTwoCarcters));
      });

      test('Password validation should return error for space at the end', () {
        expect(loginStore.validatePassWord('password '),
            equals(AppMessages.spaceAtEnd));
      });

      test(
        'Password validation should return error for no special character',
        () {
          expect(loginStore.validatePassWord('p@ssword'),
              equals(AppMessages.specialCaracter));
        },
      );
    },
  );
}
