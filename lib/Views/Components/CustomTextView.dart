import 'package:flutter/material.dart';

class CustomTextView extends StatelessWidget {

  const CustomTextView({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      autocorrect: true,
      cursorColor: Colors.green[700],
      decoration: const InputDecoration(
        hintText: "Please Enter Your Name",
        labelText: 'UserName',
        prefixIcon: Icon(Icons.account_circle_sharp),

      ),

    );
  }
}
