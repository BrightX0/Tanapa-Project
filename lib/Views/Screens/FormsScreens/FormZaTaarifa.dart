// ignore_for_file: non_constant_identifier_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanapa/Views/Components/customButtonTile.dart';

import '../../Components/customListTileForm.dart';
import '../../Components/customListTileGroup.dart';
import '../../Components/customMessageTile.dart';

class FormZaTaarifaModal {
  static late TextEditingController JINA_LA_KIKUNDI = TextEditingController();
  static late TextEditingController NAMBA_YA_USAJILI = TextEditingController();
  static late TextEditingController JINA_LA_KIJIJI = TextEditingController();
  static late TextEditingController JINA_LA_KATA = TextEditingController();
  static late TextEditingController IDADI_YA_WANACHAMA_WA_KIUME =
      TextEditingController();
  static late TextEditingController IDADI_YA_WANACHAMA_WA_KIKE =
      TextEditingController();
  static late TextEditingController ASIMILIA_KWA_MWEZI =
      TextEditingController();
  static late TextEditingController BEIYAMKOPO = TextEditingController();
  static late TextEditingController MTAJIWAKIKUNDI = TextEditingController();
  static late TextEditingController KIASI_CHA_MAREJESHO_KWA_MWEZI =
      TextEditingController();
  static late TextEditingController KIWANGO_CHA_MKOPO_WAJUU_KUTOLEWA =
      TextEditingController();
  static late TextEditingController IDADI_YA_WANACHAMA_WALIOKOPESHWA =
      TextEditingController();
  static late TextEditingController IDADI_YA_MIRADI_PAMOJA =
      TextEditingController();
  static late TextEditingController MTU_ALIWATEMBELEA = TextEditingController();
  static late TextEditingController JINA_LA_ALIYETEMBELEA =
      TextEditingController();
  static late TextEditingController MAFUNZO_YOYOTE_MLIYOPATA =
      TextEditingController();
  static late TextEditingController JINA_LA_ALIYOWAFUNDISHA =
      TextEditingController();
  static late TextEditingController CHANGAMOTO_NYINGINE =
      TextEditingController();
  static late TextEditingController TOAMAONIYAKO = TextEditingController();

  static Map<String, String> toJSON() {
    return {
      "JINA_LA_KIKUNDI": JINA_LA_KIKUNDI.text,
      "NAMBA_YA_USAJILI": NAMBA_YA_USAJILI.text,
      "JINA_LA_KIJIJI": JINA_LA_KIJIJI.text,
      "JINA_LA_KATA": JINA_LA_KATA.text,
      "IDADI_YA_WANACHAMA_WA_KIUME": IDADI_YA_WANACHAMA_WA_KIUME.text,
      'IDADI_YA_WANACHAMA_WA_KIKE': IDADI_YA_WANACHAMA_WA_KIKE.text,
      "ASIMILIA_KWA_MWEZI": ASIMILIA_KWA_MWEZI.text,
      "BEIYAMKOPO": BEIYAMKOPO.text,
      "MTAJIWAKIKUNDI": MTAJIWAKIKUNDI.text,
      "KIASI_CHA_MAREJESHO_KWA_MWEZI": KIASI_CHA_MAREJESHO_KWA_MWEZI.text,
      "KIWANGO_CHA_MKOPO_WAJUU_KUTOLEWA": KIWANGO_CHA_MKOPO_WAJUU_KUTOLEWA.text,
      "IDADI_YA_WANACHAMA_WALIOKOPESHWA": IDADI_YA_WANACHAMA_WALIOKOPESHWA.text,
      "IDADI_YA_MIRADI_PAMOJA": IDADI_YA_MIRADI_PAMOJA.text,
      'MTU_ALIWATEMBELEA': MTU_ALIWATEMBELEA.text,
      'JINA_LA_ALIYETEMBELEA': JINA_LA_ALIYETEMBELEA.text,
      'MAFUNZO_YOYOTE_MLIYOPATA': MAFUNZO_YOYOTE_MLIYOPATA.text,
      'JINA_LA_ALIYOWAFUNDISHA': JINA_LA_ALIYOWAFUNDISHA.text,
      'CHANGAMOTO_NYINGINE': CHANGAMOTO_NYINGINE.text,
      'TOAMAONIYAKO': TOAMAONIYAKO.text,
    };
  }
}

class FormZaTaarifa extends StatelessWidget {
  const FormZaTaarifa({super.key});

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
            "Fomu Ya Kutolea Taarifa ya Kikundi",
            style: GoogleFonts.openSans(fontSize: 15, color: Colors.white),
          ),
        ),
      ),
      body: ListView(
        children: [
          customListTileForm(
              textEditingController: FormZaTaarifaModal.JINA_LA_KIKUNDI,
              title: 'Jina La Kikundi',
              subtitle: 'Ingiza Jina Kamili la Kikundi'),
          customListTileForm(
              textEditingController: FormZaTaarifaModal.NAMBA_YA_USAJILI,
              title: 'Namba ya usajili',
              subtitle: 'Ingiza namba ya usajili'),
          customListTileForm(
              textEditingController: FormZaTaarifaModal.JINA_LA_KIJIJI,
              title: 'Jina La Kijiji',
              subtitle: 'Ingiza Jina Kamili la Kijiji'),
          customListTileForm(
              textEditingController: FormZaTaarifaModal.JINA_LA_KATA,
              title: 'Jina la kata',
              subtitle: 'Ingiza jina kamili la kata'),
          customListTileForm(
              textEditingController:
                  FormZaTaarifaModal.IDADI_YA_WANACHAMA_WA_KIUME,
              title: 'Idadi ya Wanachama wa Kiume',
              subtitle: 'Idadi ya wanachama wa kiume'),
          customListTileForm(
              textEditingController:
                  FormZaTaarifaModal.IDADI_YA_WANACHAMA_WA_KIKE,
              title: 'Idadi ya Wanachama wa KiKe',
              subtitle: 'Idadi ya wanachama wa kike'),
          customListTileForm(
              textEditingController: FormZaTaarifaModal.ASIMILIA_KWA_MWEZI,
              title: 'Asilimia ya mahudhurio kwa mwezi',
              subtitle: 'Ingiza asilimia ya mahudhurio kwa mwezi'),
          customListTileForm(
              textEditingController: FormZaTaarifaModal.BEIYAMKOPO,
              title: 'Nyongeza ya mkopo / Bei ya mkopo',
              subtitle: 'Ingiza nyongeza ya mkopo / Bei ya mkopo'),

          customListTileForm(
              textEditingController:
                  FormZaTaarifaModal.KIASI_CHA_MAREJESHO_KWA_MWEZI,
              title: 'Kiasi cha marejesho kilichopokelewa kwa mwezi',
              subtitle: 'IngIza KIasi cha marejesho kilichopokelewa kwa mwezi'),
          customListTileForm(
              textEditingController:
                  FormZaTaarifaModal.KIWANGO_CHA_MKOPO_WAJUU_KUTOLEWA,
              title: 'Mkopo ambatanishi uliopokelewa',
              subtitle: 'Ingiza mkopo ambatanishi uliopokelewa'),
          customListTileForm(
              textEditingController: FormZaTaarifaModal.BEIYAMKOPO,
              title: 'Kiwango cha mkopo wa juu kilicho tolewa',
              subtitle: 'Ingiza kiwango cha mkopo wa chini kilicho tolewa'),
          customListTileForm(
              textEditingController:
                  FormZaTaarifaModal.IDADI_YA_WANACHAMA_WALIOKOPESHWA,
              title: 'Idadi ya wanachama waliokopeshwa',
              subtitle: 'Ingiza kiwango cha mkopo wa juu kilicho tolewa'),
          customListTileForm(
              textEditingController: FormZaTaarifaModal.IDADI_YA_MIRADI_PAMOJA,
              title: 'Taja thamani ya miradi ya pamoja',
              subtitle: 'Ingiza thamani ya miradi ya pamoja'),
          const CustomListTileOfGroup(
              titleHeader: 'Mlitembelewa na mtu/shirika/taasisi yoyote',
              textOptions1: 'Ndiyo',
              textOptions2: 'Hapana'),
          customListTileForm(
              textEditingController: FormZaTaarifaModal.JINA_LA_ALIYETEMBELEA,
              title: 'Kama ndio andika jina lake',
              subtitle: 'Ingiza jina kamili'),
          const CustomListTileOfGroup(
              titleHeader: 'Kuna mafunzo yoyote mliopata kipindi hiki',
              textOptions1: 'Ndiyo',
              textOptions2: 'Hapana'),
          customListTileForm(
              textEditingController: FormZaTaarifaModal.JINA_LA_ALIYOWAFUNDISHA,
              title: 'Kama ndio yalikua ni ya nini na nani aliyatoa',
              subtitle: 'Ingiza jina kamili'),
          customTextTileMessage(
              textEditingController: FormZaTaarifaModal.CHANGAMOTO_NYINGINE,
              title: 'Kuna changamoto zozote zitaje',
              subtitle: 'Changamoto'),
          customTextTileMessage(
              textEditingController: FormZaTaarifaModal.TOAMAONIYAKO,
              title: 'Toa maoni yako',
              subtitle: 'Maoni'),
          customButtonTile(
            buttonText: "Tuma taarifa",
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
                  .collection('FOMU ZA TAARIFA')
                  .add(FormZaTaarifaModal.toJSON())
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
      ),
    );
  }
}
