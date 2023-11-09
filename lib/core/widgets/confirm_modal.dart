import 'package:capture_text/core/styles/styles.dart';
import 'package:flutter/material.dart';

class ConfirmModal extends StatelessWidget {
  final void Function() delete;
  const ConfirmModal({
    super.key,
    required this.delete,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Center(child: Text('Eliminar')),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: AppColors.darkGreen,
              ),
              child: const Text(
                'Cancelar',
                style: TextStyle(
                  color: AppColors.white,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              onPressed: delete,
              child: const Text(
                'Eliminar',
                style: TextStyle(
                  color: AppColors.red,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
