import 'package:flutter/material.dart';
import 'package:g_commerce/core/theming/app_theme/app_bar.dart';

ThemeData appTheme() => ThemeData
(
  useMaterial3: true,
  appBarTheme: appBarTheme(),
);
