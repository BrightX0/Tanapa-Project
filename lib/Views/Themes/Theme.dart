import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData apptheme1 = ThemeData(
    backgroundColor: Colors.grey,
    useMaterial3: true,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.green[700],
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.green,
      prefixIconColor: Colors.green[700],
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.green),
      ),
      disabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.green),
      ),
      focusedBorder:
          const OutlineInputBorder(borderSide: BorderSide(color: Colors.green)),
      border: const OutlineInputBorder(),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: Colors.green[700])
  );
}
