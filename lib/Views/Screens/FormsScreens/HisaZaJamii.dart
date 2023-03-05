import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanapa/Views/Components/customButtonTile.dart';
import 'package:tanapa/Views/Components/customListTileForm.dart';

class HisaZaJamiiModal {
  static late TextEditingController MZUNGUKO = TextEditingController(), TAREHE = TextEditingController(), WEEKNO = TextEditingController(), SALIO_ANZIA = TextEditingController(), SALIO_ISHIA = TextEditingController();

  static Map<String, String> toJson() {
    return {
      'MZUNGUKO':MZUNGUKO.text,
      'TAREHE':TAREHE.text,
      'WEEKNO':WEEKNO.text,
      'SALIO_ANZIA':SALIO_ANZIA.text,
      'SALIO_ISHIA':SALIO_ISHIA.text
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
          customListTileForm(
            textEditingController: HisaZaJamiiModal.MZUNGUKO,
              title: 'Mzunguko', subtitle: 'Ingiza Namba Ya Mzunguko'),
          customListTileForm(textEditingController: HisaZaJamiiModal.TAREHE,
              title: 'Tarehe', subtitle: 'Thamani ya Mfuko Wa Jamii'),
          customListTileForm(textEditingController: HisaZaJamiiModal.WEEKNO,
              title: 'Week No.', subtitle: 'Weeki Ya Ngapi'),
          customListTileForm(textEditingController: HisaZaJamiiModal.SALIO_ANZIA,
              title: 'Salio Anzia', subtitle: 'Salio Anzia'),
          customListTileForm(textEditingController: HisaZaJamiiModal.SALIO_ISHIA,
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
                  .collection('FOMU ZA MFUKO WA JAMII')
                  .add(HisaZaJamiiModal.toJson())
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
