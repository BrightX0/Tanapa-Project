import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanapa/Views/Screens/FormsScreens/HisaZaJamii.dart';
import 'package:tanapa/Views/Screens/FormsScreens/HisaZaWanaChama.dart';
import 'package:tanapa/Views/Screens/FormsScreens/KumalizaMzunguko.dart';
import 'package:tanapa/Views/Screens/FormsScreens/ShughuliZaKikundi.dart';
import '../Components/FormDetailCardTile.dart';
import 'FormsScreens/FormZaTaarifa.dart';

class FormBrowser extends StatelessWidget {
  const FormBrowser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 20,
        automaticallyImplyLeading: false,
        title: ListTile(
          title: Text(
            "Form",
            style: GoogleFonts.openSans(
              color: Colors.white,
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            "Chagua Form Ya Kujaza",
            style: GoogleFonts.openSans(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
      ),
      body: GridView.count(
        primary: false,
        shrinkWrap: true,
        padding: const EdgeInsets.all(15),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: [
          FormDetailCardTile(
            onClick: () => Get.to(() => const ShughuliZaKikundi()),
            iconData: Icons.paste,
            descrption: 'Shughuli ya Kikundi',
            content: 'Kwa Week',
            userHelpMessage: "Taarifa Fupi ya Shughuli ya Kikundi za Kila wiki",
          ),
          FormDetailCardTile(
            onClick: () => Get.to(() => HisaZaWanaChama()),
            iconData: Icons.paste,
            descrption: 'Hisa za Wanachama',
            content: 'Mzunguko wa 1',
            userHelpMessage: "Taarifa Fupi ya Shughuli ya Kikundi za Kila wiki",
          ),
          FormDetailCardTile(
            onClick: () => Get.to(() => HisaZajamii()),
            iconData: Icons.paste,
            descrption: 'Mfuko Wa\nJamii',
            content: 'Mzunguko wa 1',
            userHelpMessage: "Taarifa Fupi ya Shughuli ya Kikundi za Kila wiki",
          ),
          FormDetailCardTile(
            iconData: Icons.paste,
            descrption: 'Taarifa Za Kikundi',
            content: 'Wiki 1',
            userHelpMessage: "Taarifa Fupi ya Shughuli ya Kikundi za Kila wiki",
            onClick: () => Get.to(() => const FormZaTaarifa()),
          ),
          FormDetailCardTile(
            iconData: Icons.paste,
            descrption: 'Kumaliza Mzunguko',
            onClick: () => Get.to(() => const KumalizaMzunguko()),
            content: 'Mzunguko wa 1',
            userHelpMessage: "Taarifa Fupi ya Shughuli ya Kikundi za Kila wiki",
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
