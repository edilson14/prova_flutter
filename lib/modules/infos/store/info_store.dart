// ignore_for_file: library_private_types_in_public_api

import 'package:capture_text/core/messages/messages.dart';
import 'package:capture_text/core/models/models.dart';
import 'package:capture_text/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'info_store.g.dart';

class InfoStore = _InfoStore with _$InfoStore;

abstract class _InfoStore with Store {
  @observable
  TextEditingController formController = TextEditingController();

  @observable
  bool isLoadingWords = true;

  final textFormkey = GlobalKey<FormState>();

  @observable
  // ignore: prefer_final_fields
  ObservableList<InfoModel> _infos = ObservableList<InfoModel>();

  @computed
  List<InfoModel> get infos => _infos;

  @observable
  String? currentText;

  InfoModel? currentInfo;

  @action
  void setCurrentText(String? value) => currentText = value;

  @action
  String? validateText(String? value) {
    if (value == null || value.isEmpty) {
      return AppMessages.required;
    }

    return null;
  }

  loadTexts() async {
    List<String>? savedWords = await LocalStorageServices.getInfos();

    if (savedWords != null) {
      for (var word in savedWords) {
        infos.add(InfoModel.fromJson(word));
      }
    }
    isLoadingWords = false;
  }

  @action
  Future<void> saveCurrentText() async {
    if (textFormkey.currentState!.validate()) {
      if (currentInfo == null) {
        currentInfo = InfoModel(text: currentText!);
        infos.add(currentInfo!);
        _resetValues();
      } else {
        int infoIndex = _infos.indexWhere(
            (element) => element.createdAt! == currentInfo!.createdAt!);
        currentInfo =
            InfoModel(text: currentText!, createdAt: currentInfo!.createdAt);
        infos[infoIndex] = currentInfo!;

        _resetValues();
      }
      saveWords();
    }
  }

  void saveWords() {
    LocalStorageServices.saveInfos(infos);
  }

  void _resetValues() {
    currentInfo = null;
    currentText = null;
    formController = TextEditingController();
  }

  @action
  void deleteText(BuildContext context) {
    _infos.removeWhere(
        (element) => element.createdAt! == currentInfo!.createdAt!);
    saveWords();
    Navigator.pop(context);
  }
}
