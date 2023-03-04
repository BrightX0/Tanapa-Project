// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FormDetailCardTile extends StatelessWidget {
  final IconData iconData;
  final String descrption;
  final String content;
  
  final void Function()? onClick;
  final String? userHelpMessage;

  const FormDetailCardTile(
      {super.key,
      required this.iconData,
      required this.descrption,
      required this.content,
      this.onClick,
      this.userHelpMessage});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
                color: Colors.green[700]!.withOpacity(.4),
                blurRadius: 4,
                spreadRadius: .25),
          ],
        ),
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    iconData,
                    size: 45,
                    color: Colors.green[700],
                  ),
                  Tooltip(
                    message: userHelpMessage,
                    enableFeedback: true,
                    triggerMode: TooltipTriggerMode.tap,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Icon(
                          Icons.circle,
                          color: Colors.grey[100],
                          size: 30,
                        ),
                        const Icon(
                          Icons.question_mark_rounded,
                          color: Colors.grey,
                          size: 20,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    descrption,
                    style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.black87),
                  ),
                  Text(
                    content,
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w600,
                      color: Colors.black54,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
