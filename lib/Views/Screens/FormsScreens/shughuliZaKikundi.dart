// ignore_for_file: non_constant_identifier_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanapa/Views/Components/customButtonTile.dart';
import 'package:tanapa/Views/Components/customListTileForm.dart';

class ShughuliZaKikundiModal {
  static final TextEditingController JINA_LA_KIKUNDI = TextEditingController(),
      NAMBA_YA_KIKUNDI = TextEditingController(),
      HISA = TextEditingController(),
      ADHABU = TextEditingController(),
      AFYA = TextEditingController(),
      ELIMU = TextEditingController(),
      MAZINGIRA = TextEditingController(),
      ZAWADI = TextEditingController(),
      MIKOPO = TextEditingController(),
      NYONGEZA_YA_MIKOPO = TextEditingController(),
      BIMA_YA_MKOPO = TextEditingController(),
      MAPATO_MENGINEYO = TextEditingController();

  static Map<String, String> toJson() {
    return {
      'JINA_LA_KIKUNDI': JINA_LA_KIKUNDI.text,
      'NAMBA_YA_KIKUNDI': NAMBA_YA_KIKUNDI.text,
      'HISA': HISA.text,
      'ADHABU': ADHABU.text,
      'AFYA': AFYA.text,
      'ELIMU': ELIMU.text,
      'MAZINGIRA': MAZINGIRA.text,
      "ZAWADI": ZAWADI.text,
      "MIKOPO": MIKOPO.text,
      'NYONGEZA_YA_MIKOPO': NYONGEZA_YA_MIKOPO.text,
      'BIMA_YA_MKOPO': BIMA_YA_MKOPO.text,
      'MAPATO_MENGINEYO': MAPATO_MENGINEYO.text
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
            customListTileForm(
                textEditingController: ShughuliZaKikundiModal.JINA_LA_KIKUNDI,
                title: "Jina La KiKundi",
                subtitle: 'Ingiza Jina Kamili La Kikundi'),
            customListTileForm(
                textEditingController: ShughuliZaKikundiModal.NAMBA_YA_KIKUNDI,
                title: "Namba ya KiKundi",
                subtitle: 'Ingiza Namba Kamili ya Kikundi'),
            customListTileForm(
                textEditingController: ShughuliZaKikundiModal.HISA,
                title: 'Hisa',
                subtitle: "Kiasi Cha Fedha Zilizokusanywa"),
            customListTileForm(
                textEditingController: ShughuliZaKikundiModal.ADHABU,
                title: 'Adhabu',
                subtitle: 'Kiasi Cha Fedha Zilizokusanywa'),
            customListTileForm(
                textEditingController: ShughuliZaKikundiModal.AFYA,
                title: "Afya",
                subtitle: 'Kiasi Cha Fedha Zilizokusanywa'),
            customListTileForm(
                textEditingController: ShughuliZaKikundiModal.ELIMU,
                title: 'Elimu',
                subtitle: 'Kiasi Cha Fedha Zilizokusanywa'),
            customListTileForm(
                textEditingController: ShughuliZaKikundiModal.MAZINGIRA,
                title: 'Mazingira',
                subtitle: 'Kiasi Cha Fedha Zilizokusanywa'),
            customListTileForm(
                textEditingController: ShughuliZaKikundiModal.ZAWADI,
                title: 'Zawadi/Ruzuku',
                subtitle: 'Kiasi Cha Fedha Zilizokusanywa'),
            customListTileForm(
                textEditingController: ShughuliZaKikundiModal.MIKOPO,
                title: 'Mikopo',
                subtitle: 'Kiasi Cha Fedha Zilizokusanywa'),
            customListTileForm(
                textEditingController:
                    ShughuliZaKikundiModal.NYONGEZA_YA_MIKOPO,
                title: 'Nyongeza Ya Mikopo',
                subtitle: 'Kiasi Cha Fedha Zilizokusanywa'),
            customListTileForm(
                textEditingController: ShughuliZaKikundiModal.BIMA_YA_MKOPO,
                title: 'Bima ya Mkopo',
                subtitle: 'Kiasi Cha Fedha Zilizokusanywa'),
            customListTileForm(
                textEditingController: ShughuliZaKikundiModal.MAPATO_MENGINEYO,
                title: "Mapato Mengineyo",
                subtitle: 'Kiasi Cha Fedha Zilizokusanywa'),
            customButtonTile(
              buttonText: "Tuma Taarifa",
              onPressed: () {
                showDialog(
                    // The user CANNOT close this dialog  by pressing outsite it
                    barrierDismissible: false,
                    context: context,
                    builder: (_) {
                      return Dialog(
                        // The background color
                        backgroundColor: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: SizedBox(
                            width: 300,
                            height: 120,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                // The loading indicator
                                Text(
                                  'Taarifa Subiri Tukiwa Tunatuma na\nkuhifadhi Taarifa',
                                  style: GoogleFonts.openSans(fontSize: 17),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                // Some text
                                CircularProgressIndicator(
                                  color: Colors.green[700],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    });
                FirebaseFirestore.instance
                    .collection('FOMU ZA SHUGHULI ZA KIKUNDI')
                    .add(ShughuliZaKikundiModal.toJson())
                    .then((value) {
                  // removing the Dialog Builder....
                  Navigator.pop(context);

                  // AndGoing Back more...
                  Navigator.pop(context);
                });
              },
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ));
  }
}
