import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FormsHistory extends StatelessWidget {
  const FormsHistory({super.key});

  @override
  Widget build(BuildContext context) {
    CollectionReference multiForms1 =
        FirebaseFirestore.instance.collection("FOMU ZA HISA ZA WANACHAMA");

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.search,color: Colors.white,))
        ],
        automaticallyImplyLeading: false,
        toolbarHeight: 100,
        title: ListTile(
          title: Text(
            'Historia Za Fomu',
            style: GoogleFonts.openSans(
                fontSize: 33, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          subtitle: Text(
            "Historia za Fomu Zilizowasilishwa",
            style: GoogleFonts.openSans(fontSize: 15, color: Colors.white),
          ),
        ),
      ),
      body: FutureBuilder<QuerySnapshot>(
        future: multiForms1.get(),
        builder: (context, AsyncSnapshot snapshot) {
          //Error Handling conditions
          if (snapshot.hasError) {
            return const Text("Something went wrong");
          }

          //Data is output to the user
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView(
              children: snapshot.data.docs
                  .map<Widget>(
                    (doc) => Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Form ya Hisa',
                              style: GoogleFonts.urbanist(
                                  fontSize: 32, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              'Hisa iliyowekwa: ${doc.data()['HISAZILIZOWEKWA']}',
                              style: GoogleFonts.urbanist(fontSize: 20),
                            ),
                            Text(
                              'Mzunguko: ${doc.data()['MZUNGUKO']}',
                              style: GoogleFonts.urbanist(fontSize: 20),
                            ),
                            Text(
                              'Salio Anzia: ${doc.data()['SALIO_ANZIA']}',
                              style: GoogleFonts.urbanist(fontSize: 20),
                            ),
                            Text(
                              'Salio ishia: ${doc.data()['SALIO_ISHIA']}',
                              style: GoogleFonts.urbanist(fontSize: 20),
                            ),
                            Text(
                              'Tarehe: ${doc.data()['TAREHE']}',
                              style: GoogleFonts.urbanist(fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                  .toList(),
            );
          }

          return const Center(
            child: CircularProgressIndicator(
              color: Colors.green,
            ),
          );
        },
      ),
    );
  }
}
