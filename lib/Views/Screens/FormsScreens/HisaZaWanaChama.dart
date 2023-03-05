import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanapa/Views/Components/customButtonTile.dart';
import 'package:tanapa/Views/Components/customListTileForm.dart';

class HisaZaWanaChamaModal {
  static final TextEditingController MZUNGUKO =TextEditingController(), THAMANIYAHISA =TextEditingController(), HISAZILIZOWEKWA =TextEditingController(), SALIO_ANZIA =TextEditingController(), SALIO_ISHIA =TextEditingController();

  static Map<String, String> toJson() {
    return {
      'MZUNGUKO':MZUNGUKO.text,
      'TAREHE':THAMANIYAHISA.text,
      'HISAZILIZOWEKWA':HISAZILIZOWEKWA.text,
      'SALIO_ANZIA':SALIO_ANZIA.text,
      'SALIO_ISHIA':SALIO_ISHIA.text
    };
  }
}
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
            "Fomu Ya Hisa Za Wanachama",
            style: GoogleFonts.openSans(fontSize: 15, color: Colors.white),
          ),
        ),
      ),
      body: ListView(
        children: [
          customListTileForm(
            textEditingController: HisaZaWanaChamaModal.MZUNGUKO,
              title: 'Mzunguko', subtitle: "Namba ya Mzunguko."),
          customListTileForm(textEditingController: HisaZaWanaChamaModal.THAMANIYAHISA,
              title: 'Thamani Ya Hisa', subtitle: 'Ingiza Thamani ya Hisa'),
          customListTileForm(textEditingController: HisaZaWanaChamaModal.HISAZILIZOWEKWA,
              title: "Hisa Zilizowekwa",
              subtitle: "Thamani Ya Hisa Kwa Hii Wiki"),
          customListTileForm(textEditingController: HisaZaWanaChamaModal.SALIO_ANZIA,title: 'Salio', subtitle: 'Salio Anzia'),
          customListTileForm(textEditingController: HisaZaWanaChamaModal.SALIO_ISHIA,
            title: 'Salio',
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
                  .collection('FOMU ZA HISA ZA WANACHAMA')
                  .add(HisaZaWanaChamaModal.toJson())
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
