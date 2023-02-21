import 'package:flutter/material.dart';

class CustomTextView extends StatelessWidget {
  final String labelText, hintText;

  final bool isDense;
  final IconData prefixIcon;
  final bool expands;

  const CustomTextView(
      {super.key,
      required this.labelText,
      required this.hintText,
      
      required this.prefixIcon, this.isDense=false, this.expands = false});

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: null,
      expands: expands,
      autocorrect: true,
      cursorColor: Colors.green[700],
      decoration: InputDecoration(
        isDense: isDense,
        labelText: labelText,
        prefixIcon: Icon(prefixIcon),
      ),
    );
  }
}
