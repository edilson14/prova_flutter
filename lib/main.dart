import 'package:capture_text/modules/modules.dart';
import 'package:flutter/material.dart';

import 'package:capture_text/core/styles/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      home: InfoPage(),
    );
  }
}
