import 'package:capture_text/core/models/models.dart';
import 'package:capture_text/core/styles/styles.dart';
import 'package:capture_text/modules/infos/store/info_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class TextInfoWidget extends StatelessWidget {
  final InfoStore store;

  const TextInfoWidget({
    super.key,
    required this.store,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Observer(
        builder: (_) => ListView.separated(
          shrinkWrap: true,
          itemCount: store.infos.length,
          itemBuilder: (_, index) {
            InfoModel infoModel = store.infos[index];
            return ListTile(
              title: Text(infoModel.text),
              trailing: Wrap(
                children: [
                  IconButton(
                    onPressed: () {
                      store.currentInfo = infoModel;
                      store.formController.value = TextEditingValue(
                        text: infoModel.text,
                        selection: TextSelection.collapsed(
                          offset: infoModel.text.length,
                        ),
                      );
                      store.currentText = infoModel.text;
                    },
                    icon: const Icon(
                      Icons.edit,
                      color: AppColors.black,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      store.currentInfo = infoModel;
                    },
                    icon: const Icon(
                      Icons.close,
                      color: AppColors.red,
                    ),
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (_, index) {
            return const Divider();
          },
        ),
      ),
    );
  }
}
