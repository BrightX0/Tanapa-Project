import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tanapa/Views/Themes/Theme.dart';

import 'Views/Screens/Authentication.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: AppTheme.apptheme1,
      home: const AuthenticationView(),
    );
  }
}
