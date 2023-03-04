import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class customButtonTile extends StatelessWidget {
  final String buttonText;
  final void Function()? onPressed;
  const customButtonTile({super.key, required this.buttonText, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            backgroundColor: Colors.green[700],
            minimumSize: const Size(200, 60)),
        child: Text(
          buttonText,
          style: GoogleFonts.poppins(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
