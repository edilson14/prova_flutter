import 'package:capture_text/core/messages/messages.dart';
import 'package:capture_text/core/widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:capture_text/modules/login/store/login_store.dart';

Widget createMock(LoginStore store) {
  return MaterialApp(
    home: LoginForm(store: store),
  );
}

void main() {
  testWidgets('LoginForm should render correctly', (WidgetTester tester) async {
    final loginStore = LoginStore();
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: LoginForm(store: loginStore),
        ),
      ),
    );

    // Verify that the form and its components are rendered.
    expect(find.text('Usuário'), findsOneWidget);
    expect(find.text('Senha'), findsOneWidget);
    expect(find.byType(TextFormField), findsNWidgets(2));
    expect(find.byType(TextButton), findsOneWidget);
  });

  testWidgets(
    'LoginForm should validate inputs',
    (WidgetTester tester) async {
      final loginStore = LoginStore();

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: LoginForm(store: loginStore),
          ),
        ),
      );

      await tester.enterText(
          find.widgetWithText(TextFormField, 'Usuário'), 'user ');
      await tester.enterText(
          find.widgetWithText(TextFormField, 'Senha'), 'p@ss');

      await tester.pump();

      expect(find.text(AppMessages.spaceAtEnd), findsOneWidget);
      expect(find.text(AppMessages.specialCaracter), findsOneWidget);
    },
  );
}
