import 'package:flutter/material.dart';
import 'package:capture_text/core/styles/styles.dart';

ThemeData appTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(seedColor: AppColors.darkGreen),
  inputDecorationTheme: const InputDecorationTheme(
    filled: true,
    isDense: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(),
  ),
);
