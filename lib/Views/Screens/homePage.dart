import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanapa/Views/Components/customListTileForm.dart';
import 'package:tanapa/Views/Components/customListTileGroup.dart';
import 'package:tanapa/Views/Components/customMessageTile.dart';

class HompePage extends StatelessWidget {
  const HompePage({super.key});

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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  backgroundColor: Colors.green[700],
                  minimumSize: const Size(200, 60)),
              child: Text(
                "Tuma Taarifa",
                style: GoogleFonts.poppins(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
