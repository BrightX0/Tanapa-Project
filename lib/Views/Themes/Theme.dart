import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData apptheme1 = ThemeData(
    useMaterial3: true,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.green[700],
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.green,
      prefixIconColor: Colors.green[700],
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.green)
      ),
      border: const OutlineInputBorder(),
    ),
  );
}
