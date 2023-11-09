import 'package:capture_text/core/messages/messages.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:url_launcher/url_launcher.dart';

part 'login_store.g.dart';

final RegExp noSpecialCaracter = RegExp(r'^[a-zA-Z0-9]+$');
const String googleUrl = 'https://www.google.com.br/';
final Uri url = Uri.parse(googleUrl);

// ignore: library_private_types_in_public_api
class LoginStore = _LoginStore with _$LoginStore;

abstract class _LoginStore with Store {
  final formKey = GlobalKey<FormState>();

  @observable
  String login = '';

  @action
  void setLogin(String value) => login = value;

  @observable
  String passWord = '';

  @action
  void setPassword(String value) => passWord = value;

  @observable
  bool hidePassWord = true;

  @action
  void setShowPassword() {
    hidePassWord = !hidePassWord;
  }

  @action
  String? validateLogin(String? value) {
    if (value == null || value.isEmpty) {
      return AppMessages.required;
    }
    if (_hasSpaceAtEnd(value)) {
      return AppMessages.spaceAtEnd;
    }
    if (_hasSpaceAtEnd(value)) {
      return AppMessages.spaceAtEnd;
    }

    return null;
  }

  @action
  String? validatePassWord(String? value) {
    if (value == null || value.isEmpty) {
      return AppMessages.required;
    }
    if (value.length < 2) {
      return AppMessages.moreThanTwoCarcters;
    }
    if (_hasSpaceAtEnd(value)) {
      return AppMessages.spaceAtEnd;
    }
    if (!_includeSpecialCaractere(value)) {
      return AppMessages.specialCaracter;
    }

    return null;
  }

  @action
  Future<void> doLogin() async {
    Future.delayed(const Duration(seconds: 2));
    if (formKey.currentState!.validate()) {}
  }

  bool _hasSpaceAtEnd(String text) => text.trim() != text;

  bool _includeSpecialCaractere(String text) =>
      noSpecialCaracter.hasMatch(text);

  Future<void> openUrl() async {
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {}
  }
}
