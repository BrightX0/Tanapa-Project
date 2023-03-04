// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Components/customButtonTile.dart';
import '../../Components/customListTileForm.dart';

class KumalizaMzungukoModal {
  static late String JINA_LA_MWANACHAMA,
      HISA,
      AFYA,
      ELIMU,
      MAZINGIRA,
      MADENI,
      GAWIO,
      SALIO,
      SALIO_ISHIA;

  static Map<String, String> toJSon() {
    return {
      "JINA_LA_MWANACHAMA": JINA_LA_MWANACHAMA,
      'HISA': HISA,
      "ELIMU":ELIMU,
      "MAZINGIRA":MAZINGIRA,
      "MADENI":MADENI,
      "GAWIO":GAWIO,
      "SALIO":SALIO,
      "SALIO_ISHIA":SALIO_ISHIA
    };
  }
}

class KumalizaMzunguko extends StatelessWidget {
  const KumalizaMzunguko({super.key});

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
            "Fomu Ya Kumaliza Mzunguko",
            style: GoogleFonts.openSans(fontSize: 15, color: Colors.white),
          ),
        ),
      ),
      body: ListView(
        children: [
          const customListTileForm(
              title: 'Jina la mwanachama',
              subtitle: 'Ingiza Jina la mwanachama'),
          const customListTileForm(
              title: 'Hisa', subtitle: 'Thamani ya Hisa ya MwanaaChama'),
          const customListTileForm(
              title: 'Afya', subtitle: 'Thamani ya Mfuko Wa Jamii'),
          const customListTileForm(
              title: 'Elimu', subtitle: 'Thamani ya Mfuko Wa Jamii'),
          const customListTileForm(
              title: 'Mazingira', subtitle: 'Thamani ya Mfuko Wa Jamii'),
          const customListTileForm(
              title: 'Madeni', subtitle: 'Madeni ya MwanaChama'),
          const customListTileForm(
              title: 'Gawio', subtitle: 'Gawio la MwanaChama'),
          const customListTileForm(
              title: 'Salio', subtitle: 'Salio la MwanaChama'),
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
