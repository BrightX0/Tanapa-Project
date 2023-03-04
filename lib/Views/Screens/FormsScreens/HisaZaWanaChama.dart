import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanapa/Views/Components/customButtonTile.dart';
import 'package:tanapa/Views/Components/customListTileForm.dart';

class HisaZaWanaChama extends StatelessWidget {
  const HisaZaWanaChama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 100,
        title: ListTile(
          title: Text(
            'Fomu',
            style: GoogleFonts.openSans(
                fontSize: 33, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          subtitle: Text(
            "Fomu Ya Shughuli Za KiKundi Kwa Week",
            style: GoogleFonts.openSans(fontSize: 15, color: Colors.white),
          ),
        ),
      ),
      body: ListView(
        children: [
          const customListTileForm(
              title: 'Mzunguko', subtitle: "Namba ya Mzunguko."),
          const customListTileForm(
              title: 'Thamani Ya Hisa', subtitle: 'Ingiza Thamani ya Hisa'),
          const customListTileForm(
              title: "Hisa Zilizowekwa",
              subtitle: "Thamani Ya Hisa Kwa Hii Wiki"),
          const customListTileForm(title: 'Salio', subtitle: 'Salio Anzia'),
          const customListTileForm(
            title: 'Salio',
            subtitle: 'Salio Lililoishia',
          ),
          customButtonTile(
            buttonText: "Tuma Taarifa",
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
