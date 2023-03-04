// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanapa/Views/Components/customButtonTile.dart';

import '../../Components/customListTileForm.dart';
import '../../Components/customListTileGroup.dart';
import '../../Components/customMessageTile.dart';

class FormZaTaarifaModal {
  static late String JINA_LA_KIKUNDI;
  static late String NAMBA_YA_USAJILI;
  static late String JINA_LA_KIJIJI;
  static late String JINA_LA_KATA;
  static late String IDADI_YA_WANACHAMA_WA_KIUME;
  static late String IDADI_YA_WANACHAMA_WA_KIKE;
  static late String ASIMILIA_KWA_MWEZI;
  static late String BEIYAMKOPO;
  static late String MTAJIWAKIKUNDI;
  static late String KIASI_CHA_MAREJESHO_KWA_MWEZI;
  static late String KIWANGO_CHA_MKOPO_WAJUU_KUTOLEWA;
  static late String IDADI_YA_WANACHAMA_WALIOKOPESHWA;
  static late String IDADI_YA_MIRADI_PAMOJA;
  static late String MTU_ALIWATEMBELEA = 'NDIYO';
  static late String JINA_LA_ALIYETEMBELEA;
  static late String MAFUNZO_YOYOTE_MLIYOPATA = "NDIYO";
  static late String JINA_LA_ALIYOWAFUNDISHA;
  static late String CHANGAMOTO_NYINGINE;
  static late String TOAMAONIYAKO;

  static Map<String, String> toJSON() {
    return {
      "JINA_LA_KIKUNDI": JINA_LA_KIKUNDI,
      "NAMBA_YA_USAJILI": NAMBA_YA_USAJILI,
      "JINA_LA_KIJIJI": JINA_LA_KIJIJI,
      "JINA_LA_KATA": JINA_LA_KATA,
      "IDADI_YA_WANACHAMA_WA_KIUME": IDADI_YA_WANACHAMA_WA_KIUME,
      'IDADI_YA_WANACHAMA_WA_KIKE': IDADI_YA_WANACHAMA_WA_KIKE,
      "ASIMILIA_KWA_MWEZI": ASIMILIA_KWA_MWEZI,
      "BEIYAMKOPO": BEIYAMKOPO,
      "MTAJIWAKIKUNDI": MTAJIWAKIKUNDI,
      "KIASI_CHA_MAREJESHO_KWA_MWEZI": KIASI_CHA_MAREJESHO_KWA_MWEZI,
      "KIWANGO_CHA_MKOPO_WAJUU_KUTOLEWA": KIWANGO_CHA_MKOPO_WAJUU_KUTOLEWA,
      "IDADI_YA_WANACHAMA_WALIOKOPESHWA": IDADI_YA_WANACHAMA_WALIOKOPESHWA,
      "IDADI_YA_MIRADI_PAMOJA": IDADI_YA_MIRADI_PAMOJA,
      'MTU_ALIWATEMBELEA': MTU_ALIWATEMBELEA,
      'JINA_LA_ALIYETEMBELEA': JINA_LA_ALIYETEMBELEA,
      'MAFUNZO_YOYOTE_MLIYOPATA':MAFUNZO_YOYOTE_MLIYOPATA,
      'JINA_LA_ALIYOWAFUNDISHA':JINA_LA_ALIYOWAFUNDISHA,
      'CHANGAMOTO_NYINGINE':CHANGAMOTO_NYINGINE,
      'TOAMAONIYAKO':TOAMAONIYAKO,
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
          const customListTileForm(
              title: 'Jina La Kikundi',
              subtitle: 'Ingiza Jina Kamili la Kikundi'),
          const customListTileForm(
              title: 'Namba ya usajili', subtitle: 'Ingiza namba ya usajili'),
          const customListTileForm(
              title: 'Jina La Kijiji',
              subtitle: 'Ingiza Jina Kamili la Kijiji'),
          const customListTileForm(
              title: 'Jina la kata', subtitle: 'Ingiza jina kamili la kata'),
          const customListTileForm(
              title: 'Idadi ya Wanachama wa Kiume',
              subtitle: 'Idadi ya wanachama wa kiume'),
          const customListTileForm(
              title: 'Idadi ya Wanachama wa KiKe',
              subtitle: 'Idadi ya wanachama wa kike'),
          const customListTileForm(
              title: 'Asilimia ya mahudhurio kwa mwezi',
              subtitle: 'Ingiza asilimia ya mahudhurio kwa mwezi'),
          const customListTileForm(
              title: 'Hisa zilizo wekwa kwa mwezi',
              subtitle: 'Ingiza hisa zilizo wekwa kwa mwezi'),
          const customListTileForm(
              title: 'Mifuko ya jamii iliyowekwa kwa mwezi',
              subtitle: 'Ingiza Mifuko ya jamii iliyowekwa kwa mwezi'),
          const customListTileForm(
              title: 'Nyongeza ya mkopo / Bei ya mkopo',
              subtitle: 'Ingiza nyongeza ya mkopo / Bei ya mkopo'),
          const customListTileForm(
              title: 'Zawadi / Ruzuku', subtitle: 'Zawadi / Ruzuku'),
          const customListTileForm(title: 'Bima', subtitle: 'Bima'),
          const customListTileForm(title: 'Adhabu', subtitle: 'Adhabu'),
          const customListTileForm(
              title: 'Mtaji wa kikundi hadi sasa',
              subtitle: 'Ingiza mtaji wa kikundi hadi sasa'),
          const customListTileForm(
              title: 'Kiasi cha marejesho kilichopokelewa kwa mwezi',
              subtitle: 'IngIza KIasi cha marejesho kilichopokelewa kwa mwezi'),
          const customListTileForm(
              title: 'Mkopo ambatanishi uliopokelewa',
              subtitle: 'Ingiza mkopo ambatanishi uliopokelewa'),
          const customListTileForm(
              title: 'Kiwango cha mkopo wa juu kilicho tolewa',
              subtitle: 'Ingiza kiwango cha mkopo wa chini kilicho tolewa'),
          const customListTileForm(
              title: 'Idadi ya wanachama waliokopeshwa',
              subtitle: 'Ingiza kiwango cha mkopo wa juu kilicho tolewa'),
          const customListTileForm(
              title: 'Miradi ya pamoja ya kikundi ( Kama ipo itaje )',
              subtitle: 'Miradi ya pamoja ya kikundi'),
          const customListTileForm(
              title: 'Taja thamani ya miradi ya pamoja',
              subtitle: 'Ingiza thamani ya miradi ya pamoja'),
          const CustomListTileOfGroup(
              titleHeader: 'Mlitembelewa na mtu/shirika/taasisi yoyote',
              textOptions1: 'Ndiyo',
              textOptions2: 'Hapana'),
          const customListTileForm(
              title: 'Kama ndio andika jina lake',
              subtitle: 'Ingiza jina kamili'),
          const CustomListTileOfGroup(
              titleHeader: 'Kuna mafunzo yoyote mliopata kipindi hiki',
              textOptions1: 'Ndiyo',
              textOptions2: 'Hapana'),
          const customListTileForm(
              title: 'Kama ndio yalikua ni ya nini na nani aliyatoa',
              subtitle: 'Ingiza jina kamili'),
          const customTextTileMessage(
              title: 'Kuna changamoto zozote zitaje', subtitle: 'Changamoto'),
          const customTextTileMessage(
              title: 'Toa maoni yako', subtitle: 'Maoni'),
          customButtonTile(
            buttonText: "Tuma taarifa",
            onPressed: () {},
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
