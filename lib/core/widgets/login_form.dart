import 'package:capture_text/core/styles/styles.dart';
import 'package:capture_text/modules/login/store/login_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class LoginForm extends StatelessWidget {
  final LoginStore store;
  const LoginForm({super.key, required this.store});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        key: store.formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              maxLength: 20,
              decoration: const InputDecoration(
                hintText: 'Usuário',
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.person,
                ),
              ),
              onChanged: store.setLogin,
              validator: store.validateLogin,
            ),
            Observer(
              builder: (_) => TextFormField(
                obscuringCharacter: '*',
                onChanged: store.setPassword,
                validator: store.validatePassWord,
                maxLength: 20,
                obscureText: store.hidePassWord,
                decoration: InputDecoration(
                  hintText: 'Senha',
                  prefixIcon: const Icon(
                    Icons.lock,
                  ),
                  suffixIcon: IconButton(
                    onPressed: store.setShowPassword,
                    icon: Icon(
                      store.hidePassWord
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 150,
              child: TextButton(
                style: loginButtonStyles,
                onPressed: store.doLogin,
                child: const Text('Entrar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
