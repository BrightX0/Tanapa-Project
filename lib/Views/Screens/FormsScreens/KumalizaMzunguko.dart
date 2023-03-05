// ignore_for_file: non_constant_identifier_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Components/customButtonTile.dart';
import '../../Components/customListTileForm.dart';

class KumalizaMzungukoModal {
  static final TextEditingController JINA_LA_MWANACHAMA = TextEditingController(),
      HISA = TextEditingController(),
      AFYA = TextEditingController(),
      ELIMU = TextEditingController(),
      MAZINGIRA = TextEditingController(),
      MADENI = TextEditingController(),
      GAWIO = TextEditingController(),
      SALIO = TextEditingController(),
      SALIO_ISHIA = TextEditingController();

  static Map<String, String> toJSon() {
    return {
      "JINA_LA_MWANACHAMA": JINA_LA_MWANACHAMA.text,
      'HISA': HISA.text,
      "ELIMU": ELIMU.text,
      "MAZINGIRA": MAZINGIRA.text,
      "MADENI": MADENI.text,
      "GAWIO": GAWIO.text,
      "SALIO": SALIO.text,
      "SALIO_ISHIA": SALIO_ISHIA.text
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
          customListTileForm(
              textEditingController: KumalizaMzungukoModal.JINA_LA_MWANACHAMA,
              title: 'Jina la mwanachama',
              subtitle: 'Ingiza Jina la mwanachama'),
          customListTileForm(
              textEditingController: KumalizaMzungukoModal.HISA,
              title: 'Hisa',
              subtitle: 'Thamani ya Hisa ya MwanaaChama'),
          customListTileForm(
              textEditingController: KumalizaMzungukoModal.AFYA,
              title: 'Afya',
              subtitle: 'Thamani ya Mfuko Wa Jamii'),
          customListTileForm(
              textEditingController: KumalizaMzungukoModal.ELIMU,
              title: 'Elimu',
              subtitle: 'Thamani ya Mfuko Wa Jamii'),
          customListTileForm(
              textEditingController: KumalizaMzungukoModal.MAZINGIRA,
              title: 'Mazingira',
              subtitle: 'Thamani ya Mfuko Wa Jamii'),
          customListTileForm(
              textEditingController: KumalizaMzungukoModal.MADENI,
              title: 'Madeni',
              subtitle: 'Madeni ya MwanaChama'),
          customListTileForm(
              textEditingController: KumalizaMzungukoModal.GAWIO,
              title: 'Gawio',
              subtitle: 'Gawio la MwanaChama'),
          customListTileForm(
              textEditingController: KumalizaMzungukoModal.SALIO,
              title: 'Salio',
              subtitle: 'Salio la MwanaChama'),
          customListTileForm(
            textEditingController: KumalizaMzungukoModal.SALIO_ISHIA,
            title: 'Salio ishia',
            subtitle: 'Salio Lililoishia',
          ),
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
                  .collection('FOMU ZA KUMALIZA MZUNGUKO')
                  .add(KumalizaMzungukoModal.toJSon())
                  .then((value) {
                // removing the Dialog Builder....
                Navigator.pop(context);

                // AndGoing Back more...
                Navigator.pop(context);
              });
            },
          )
        ],
      ),
    );
  }
}
