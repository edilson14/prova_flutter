// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$InfoStore on _InfoStore, Store {
  Computed<List<InfoModel>>? _$infosComputed;

  @override
  List<InfoModel> get infos =>
      (_$infosComputed ??= Computed<List<InfoModel>>(() => super.infos,
              name: '_InfoStore.infos'))
          .value;

  late final _$isLoadingWordsAtom =
      Atom(name: '_InfoStore.isLoadingWords', context: context);

  @override
  bool get isLoadingWords {
    _$isLoadingWordsAtom.reportRead();
    return super.isLoadingWords;
  }

  @override
  set isLoadingWords(bool value) {
    _$isLoadingWordsAtom.reportWrite(value, super.isLoadingWords, () {
      super.isLoadingWords = value;
    });
  }

  late final _$_infosAtom = Atom(name: '_InfoStore._infos', context: context);

  @override
  ObservableList<InfoModel> get _infos {
    _$_infosAtom.reportRead();
    return super._infos;
  }

  @override
  set _infos(ObservableList<InfoModel> value) {
    _$_infosAtom.reportWrite(value, super._infos, () {
      super._infos = value;
    });
  }

  late final _$currentTextAtom =
      Atom(name: '_InfoStore.currentText', context: context);

  @override
  String? get currentText {
    _$currentTextAtom.reportRead();
    return super.currentText;
  }

  @override
  set currentText(String? value) {
    _$currentTextAtom.reportWrite(value, super.currentText, () {
      super.currentText = value;
    });
  }

  late final _$saveCurrentTextAsyncAction =
      AsyncAction('_InfoStore.saveCurrentText', context: context);

  @override
  Future<void> saveCurrentText() {
    return _$saveCurrentTextAsyncAction.run(() => super.saveCurrentText());
  }

  late final _$_InfoStoreActionController =
      ActionController(name: '_InfoStore', context: context);

  @override
  void setCurrentText(String? value) {
    final _$actionInfo = _$_InfoStoreActionController.startAction(
        name: '_InfoStore.setCurrentText');
    try {
      return super.setCurrentText(value);
    } finally {
      _$_InfoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String? validateText(String? value) {
    final _$actionInfo = _$_InfoStoreActionController.startAction(
        name: '_InfoStore.validateText');
    try {
      return super.validateText(value);
    } finally {
      _$_InfoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void deleteText() {
    final _$actionInfo =
        _$_InfoStoreActionController.startAction(name: '_InfoStore.deleteText');
    try {
      return super.deleteText();
    } finally {
      _$_InfoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoadingWords: ${isLoadingWords},
currentText: ${currentText},
infos: ${infos}
    ''';
  }
}
