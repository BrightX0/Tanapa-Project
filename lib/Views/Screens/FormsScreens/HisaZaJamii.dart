import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanapa/Views/Components/customButtonTile.dart';
import 'package:tanapa/Views/Components/customListTileForm.dart';

class HisaZaJamiiModal {
  static late String MZUNGUKO, TAREHE, WEEKNO, SALIO_ANZIA, SALIO_ISHIA;

  static Map<String, String> toJson() {
    return {
      'MZUNGUKO':MZUNGUKO,
      'TAREHE':TAREHE,
      'WEEKNO':WEEKNO,
      'SALIO_ANZIA':SALIO_ANZIA,
      'SALIO_ISHIA':SALIO_ISHIA
    };
  }
}

class HisaZajamii extends StatelessWidget {
  const HisaZajamii({super.key});

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
            "Fomu Ya Mfuko Wa Jamii",
            style: GoogleFonts.openSans(fontSize: 15, color: Colors.white),
          ),
        ),
      ),
      body: ListView(
        children: [
          const customListTileForm(
              title: 'Mzunguko', subtitle: 'Ingiza Namba Ya Mzunguko'),
          const customListTileForm(
              title: 'Tarehe', subtitle: 'Thamani ya Mfuko Wa Jamii'),
          const customListTileForm(
              title: 'Week No.', subtitle: 'Weeki Ya Ngapi'),
          const customListTileForm(
              title: 'Salio Anzia', subtitle: 'Salio Anzia'),
          const customListTileForm(
            title: 'Salio ishia',
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
