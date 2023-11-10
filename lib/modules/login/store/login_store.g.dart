// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginStore on _LoginStore, Store {
  late final _$loginAtom = Atom(name: '_LoginStore.login', context: context);

  @override
  String get login {
    _$loginAtom.reportRead();
    return super.login;
  }

  @override
  set login(String value) {
    _$loginAtom.reportWrite(value, super.login, () {
      super.login = value;
    });
  }

  late final _$passWordAtom =
      Atom(name: '_LoginStore.passWord', context: context);

  @override
  String get passWord {
    _$passWordAtom.reportRead();
    return super.passWord;
  }

  @override
  set passWord(String value) {
    _$passWordAtom.reportWrite(value, super.passWord, () {
      super.passWord = value;
    });
  }

  late final _$hidePassWordAtom =
      Atom(name: '_LoginStore.hidePassWord', context: context);

  @override
  bool get hidePassWord {
    _$hidePassWordAtom.reportRead();
    return super.hidePassWord;
  }

  @override
  set hidePassWord(bool value) {
    _$hidePassWordAtom.reportWrite(value, super.hidePassWord, () {
      super.hidePassWord = value;
    });
  }

  late final _$doLoginAsyncAction =
      AsyncAction('_LoginStore.doLogin', context: context);

  @override
  Future<void> doLogin(BuildContext context) {
    return _$doLoginAsyncAction.run(() => super.doLogin(context));
  }

  late final _$_LoginStoreActionController =
      ActionController(name: '_LoginStore', context: context);

  @override
  void setLogin(String value) {
    final _$actionInfo =
        _$_LoginStoreActionController.startAction(name: '_LoginStore.setLogin');
    try {
      return super.setLogin(value);
    } finally {
      _$_LoginStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String value) {
    final _$actionInfo = _$_LoginStoreActionController.startAction(
        name: '_LoginStore.setPassword');
    try {
      return super.setPassword(value);
    } finally {
      _$_LoginStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setShowPassword() {
    final _$actionInfo = _$_LoginStoreActionController.startAction(
        name: '_LoginStore.setShowPassword');
    try {
      return super.setShowPassword();
    } finally {
      _$_LoginStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String? validateLogin(String? value) {
    final _$actionInfo = _$_LoginStoreActionController.startAction(
        name: '_LoginStore.validateLogin');
    try {
      return super.validateLogin(value);
    } finally {
      _$_LoginStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String? validatePassWord(String? value) {
    final _$actionInfo = _$_LoginStoreActionController.startAction(
        name: '_LoginStore.validatePassWord');
    try {
      return super.validatePassWord(value);
    } finally {
      _$_LoginStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
login: ${login},
passWord: ${passWord},
hidePassWord: ${hidePassWord}
    ''';
  }
}
