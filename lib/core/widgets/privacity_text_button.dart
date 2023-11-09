import 'package:capture_text/core/styles/styles.dart';
import 'package:flutter/material.dart';

class UrlLink extends StatelessWidget {
  final void Function() callbackAction;

  const UrlLink({
    super.key,
    required this.callbackAction,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: callbackAction,
      child: const Text(
        'Política de Privacidade',
        style: TextStyle(
          color: AppColors.white,
        ),
      ),
    );
  }
}
