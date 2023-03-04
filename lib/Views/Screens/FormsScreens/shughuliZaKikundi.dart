// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanapa/Views/Components/customButtonTile.dart';
import 'package:tanapa/Views/Components/customListTileForm.dart';

class ShughuliZaKikundiModal {
  static late String JINA_LA_KIKUNDI,
      NAMBA_YA_KIKUNDI,
      HISA,
      ADHABU,
      AFYA,
      ELIMU,
      MAZINGIRA,
      ZAWADI,
      MIKOPO,
      NYONGEZA_YA_MIKOPO,
      BIMA_YA_MKOPO,
      MAPATO_MENGINEYO;

  static Map<String, String> toJson() {
    return {
      'JINA_LA_KIKUNDI': JINA_LA_KIKUNDI,
      'NAMBA_YA_KIKUNDI': NAMBA_YA_KIKUNDI,
      'HISA': HISA,
      'ADHABU': ADHABU,
      'AFYA': AFYA,
      'ELIMU': ELIMU,
      'MAZINGIRA': MAZINGIRA,
      "ZAWADI": ZAWADI,
      "MIKOPO": MIKOPO,
      'NYONGEZA_YA_MIKOPO': NYONGEZA_YA_MIKOPO,
      'BIMA_YA_MKOPO': BIMA_YA_MKOPO,
      'MAPATO_MENGINEYO': MAPATO_MENGINEYO
    };
  }
}

class ShughuliZaKikundi extends StatelessWidget {
  const ShughuliZaKikundi({super.key});

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
                  fontSize: 33,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
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
                title: "Jina La KiKundi",
                subtitle: 'Ingiza Jina Kamili La Kikundi'),
            const customListTileForm(
                title: "Namba ya KiKundi",
                subtitle: 'Ingiza Namba Kamili ya Kikundi'),
            const customListTileForm(
                title: 'Hisa', subtitle: "Kiasi Cha Fedha Zilizokusanywa"),
            const customListTileForm(
                title: 'Adhabu', subtitle: 'Kiasi Cha Fedha Zilizokusanywa'),
            const customListTileForm(
                title: "Afya", subtitle: 'Kiasi Cha Fedha Zilizokusanywa'),
            const customListTileForm(
                title: 'Elimu', subtitle: 'Kiasi Cha Fedha Zilizokusanywa'),
            const customListTileForm(
                title: 'Mazingira', subtitle: 'Kiasi Cha Fedha Zilizokusanywa'),
            const customListTileForm(
                title: 'Zawadi/Ruzuku',
                subtitle: 'Kiasi Cha Fedha Zilizokusanywa'),
            const customListTileForm(
                title: 'Mikopo', subtitle: 'Kiasi Cha Fedha Zilizokusanywa'),
            const customListTileForm(
                title: 'Nyongeza Ya Mikopo',
                subtitle: 'Kiasi Cha Fedha Zilizokusanywa'),
            const customListTileForm(
                title: 'Bima ya Mkopo',
                subtitle: 'Kiasi Cha Fedha Zilizokusanywa'),
            const customListTileForm(
                title: "Mapato Mengineyo",
                subtitle: 'Kiasi Cha Fedha Zilizokusanywa'),
            customButtonTile(
              buttonText: "Tuma Taarifa",
              onPressed: () {},
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ));
  }
}
