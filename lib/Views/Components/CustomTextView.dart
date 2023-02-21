import 'package:flutter/material.dart';

class CustomTextView extends StatelessWidget {
  final String labelText, hintText;
  final IconData prefixIcon;

  const CustomTextView({super.key, required this.labelText, required this.hintText, required this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      autocorrect: true,
      cursorColor: Colors.green[700],
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        prefixIcon: Icon(prefixIcon),
      ),
    );
  }
}
