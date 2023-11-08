import 'package:capture_text/core/widgets/widgets.dart';
import 'package:capture_text/modules/login/store/login_store.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final LoginStore _loginStore = LoginStore();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: GradientBackGround(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: LoginForm(store: _loginStore),
            ),
            UrlLink(callbackAction: _loginStore.openUrl),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
