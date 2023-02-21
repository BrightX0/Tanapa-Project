import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum AcceptableValue { hapana, ndio }

class CustomListTileOfGroup extends StatefulWidget {
  final String titleHeader, textOptions1, textOptions2;
  const CustomListTileOfGroup(
      {super.key,
      required this.titleHeader,
      required this.textOptions1,
      required this.textOptions2});

  @override
  State<CustomListTileOfGroup> createState() => _CustomListTileOfGroupState();
}

class _CustomListTileOfGroupState extends State<CustomListTileOfGroup> {
  AcceptableValue? acceptableValue = AcceptableValue.hapana;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, top: 7, bottom: 10,right: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
              color: Colors.black87.withOpacity(.2),
              blurRadius: 4,
              spreadRadius: .25),
        ],
      ),
      child: Column(
        children: [
          Text(
            widget.titleHeader,
            style: GoogleFonts.openSans(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          ListTile(
          title: Text(widget.textOptions1),
          leading: Radio<AcceptableValue>(
            value: AcceptableValue.hapana,
            groupValue: acceptableValue,
            onChanged: (AcceptableValue? value) {
              setState(() {
                acceptableValue = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text(widget.textOptions2),
          leading: Radio<AcceptableValue>(
            value: AcceptableValue.ndio,
            groupValue: acceptableValue,
            onChanged: (AcceptableValue? value) {
              setState(() {
                acceptableValue = value;
              });
            },
          ),
        ),
        const SizedBox(height: 5,)
        ],
      ),
    );
  }
}
