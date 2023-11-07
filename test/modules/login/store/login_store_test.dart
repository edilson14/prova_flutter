import 'package:capture_text/core/messages/messages.dart';
import 'package:capture_text/modules/login/store/login_store.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  LoginStore store = LoginStore();
  group(
    'Testing form validators do login',
    () {
      test(
        "espaço no final",
        () {
          expect(store.validateLogin('edilson '), AppMessages.spaceAtEnd);
        },
      );

      test(
        "não deve retornar nenhum erro",
        () {
          String? errorMessage = store.validateLogin('edilson');

          expect(errorMessage, null);
        },
      );
    },
  );

  group(
    'testing password validators',
    () {
      test(
        'doesnt include special caracter',
        () {
          String? message = store.validatePassWord('#edils&');

          expect(message, AppMessages.specialCaracter);
        },
      );
    },
  );
}
