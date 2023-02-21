import 'package:flutter/material.dart';

import '../../Variables/AppStrings.dart';
import '../Components/CustomTextView.dart';

class AuthenticationView extends StatelessWidget {
  const AuthenticationView({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.network(AppStrings.imageURL),
          CustomTextView(),
          CustomTextView()
        ],
      ),
    );
  }
}
