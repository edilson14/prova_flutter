import 'package:capture_text/core/styles/styles.dart';
import 'package:capture_text/modules/infos/store/info_store.dart';
import 'package:flutter/material.dart';

class TextAreaWidget extends StatelessWidget {
  final InfoStore store;
  const TextAreaWidget({
    super.key,
    required this.store,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        key: store.textFormkey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: TextFormField(
          // focusNode: primaryFocus,
          validator: store.validateText,
          keyboardType: TextInputType.text,
          onChanged: store.setCurrentText,
          onFieldSubmitted: (String? value) async {
            await store.saveCurrentText();
          },
          textAlign: TextAlign.center,
          autofocus: true,
          maxLines: null,
          decoration: const InputDecoration(
            hintText: 'Digite seu texto',
            hintStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColors.black,
            ),
          ),
        ),
      ),
    );
  }
}
