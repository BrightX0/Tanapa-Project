import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'FormHistory.dart';
import 'FormsScreens/HisaZaJamii.dart';
import 'FormsScreens/HisaZaWanaChama.dart';
import 'FormsScreens/KumalizaMzunguko.dart';
import 'FormsScreens/ShughuliZaKikundi.dart';
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
            onClick: () => Get.to(() => const HisaZaWanaChama()),
            iconData: Icons.paste,
            descrption: 'Hisa za Wanachama',
            content: 'Mzunguko wa 1',
            userHelpMessage: "Taarifa Fupi ya Shughuli ya Kikundi za Kila wiki",
          ),
          FormDetailCardTile(
            onClick: () => Get.to(() => const HisaZajamii()),
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
      floatingActionButton: OpenContainer(
            transitionType: ContainerTransitionType.fade,
            transitionDuration: 500.milliseconds,
            closedBuilder: (context, action) {
              return FloatingActionButton(
                  elevation: 0.0,
                  onPressed: action,
                  backgroundColor: Colors.green,
                  child: const Icon(Icons.history, color: Colors.white));
            },
            openBuilder: (context, action) {
              return const FormsHistory();
            },
          ),
    );
  }
}
