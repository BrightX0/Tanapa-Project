import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanapa/Views/Components/CustomTextView.dart';

class customListTileForm extends StatelessWidget {
  final TextEditingController? textEditingController;
  final String title, subtitle;
  const customListTileForm(
      {super.key,
      required this.title,
      required this.subtitle,
      this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 5, top: 10, bottom: 10),
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
          child: ListTile(
            style: ListTileStyle.drawer,
            title: Padding(
              padding: const EdgeInsets.only(bottom: 20, left: 5),
              child: Text(
                title,
                style: GoogleFonts.openSans(
                    fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ),
            subtitle: CustomTextView(
              textEditingController: textEditingController,
              isDense: true,
              labelText: subtitle,
              hintText: subtitle,
              prefixIcon: Icons.edit,
            ),
          ),
        ),
        const SizedBox(
          height: 5.0,
        )
      ],
    );
  }
}
