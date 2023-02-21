import 'package:flutter/material.dart';
import 'package:tanapa/Views/Themes/Theme.dart';

import 'Views/Screens/Authentication.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.apptheme1,
      home: AuthenticationView(),
    );
  }
}
