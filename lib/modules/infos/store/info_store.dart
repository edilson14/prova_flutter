import 'package:capture_text/core/messages/messages.dart';
import 'package:capture_text/core/models/models.dart';
import 'package:capture_text/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'info_store.g.dart';

class InfoStore = _InfoStore with _$InfoStore;

abstract class _InfoStore with Store {
  @observable
  bool isLoadingWords = true;

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

  final textFormkey = GlobalKey<FormState>();

  loadTexts() {
    Future.delayed(const Duration(seconds: 2));
    isLoadingWords = false;
  }

  @action
  Future<void> saveCurrentText() async {
    if (textFormkey.currentState!.validate()) {
      if (currentInfo == null) {
        currentInfo = InfoModel(text: currentText!);
        infos.add(currentInfo!);
        currentText = null;
      }
      // LocalStorageServices.saveInfos(infos);
    }
  }
}
