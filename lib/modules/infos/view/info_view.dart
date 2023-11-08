import 'package:capture_text/core/widgets/text_info.dart';
import 'package:capture_text/core/widgets/widgets.dart';
import 'package:capture_text/modules/infos/store/info_store.dart';
import 'package:capture_text/modules/login/store/login_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  final InfoStore _infoStore = InfoStore();

  final LoginStore _loginStore = LoginStore();

  @override
  void initState() {
    super.initState();
    _infoStore.loadTexts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackGround(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Observer(
                      builder: (_) => Visibility(
                        visible: _infoStore.isLoadingWords,
                        child: const Card(
                          elevation: 2,
                          child: LinearProgressIndicator(),
                        ),
                      ),
                    ),
                    TextInfoWidget(
                      infos: _infoStore.infos,
                      delete: _infoStore.deleteText,
                    ),
                  ],
                ),
              ),
              TextAreaWidget(
                store: _infoStore,
              ),
              UrlLink(callbackAction: _loginStore.openUrl),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _infoStore.saveWords();
  }
}
