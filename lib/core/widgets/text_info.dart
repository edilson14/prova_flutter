import 'package:capture_text/core/models/models.dart';
import 'package:capture_text/core/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class TextInfoWidget extends StatelessWidget {
  final List<InfoModel> infos;

  const TextInfoWidget({
    super.key,
    required this.infos,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Observer(
        builder: (_) => ListView.separated(
          shrinkWrap: true,
          itemCount: infos.length,
          itemBuilder: (_, index) {
            String text = infos[index].text;
            return ListTile(
              title: Text(text),
              trailing: const Wrap(
                children: [
                  IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.edit,
                      color: AppColors.black,
                    ),
                  ),
                  IconButton(
                    onPressed: null,
                    icon: Icon(
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
