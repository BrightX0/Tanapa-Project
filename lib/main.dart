import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tanapa/Views/Themes/Theme.dart';

import 'Views/Screens/Authentication.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

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
