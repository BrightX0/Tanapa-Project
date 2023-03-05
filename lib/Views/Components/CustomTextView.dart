import 'package:flutter/material.dart';

class CustomTextView extends StatelessWidget {
  final String labelText, hintText;
  final TextEditingController? textEditingController;
  final bool isDense;
  final IconData prefixIcon;
  final bool expands;

  CustomTextView(
      {super.key,
      required this.labelText,
      required this.hintText,
      required this.prefixIcon,
      this.isDense = false,
      this.expands = false, this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
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
