import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:craveiospro/singleuser.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class ReadUsers extends StatelessWidget {
  final String docid;
  ReadUsers({required this.docid});

  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection("guest");
    return FutureBuilder<DocumentSnapshot>(
        future: users.doc(docid).get(),
        builder: ((context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            Map<String, dynamic> data =
                snapshot.data!.data() as Map<String, dynamic>;
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (((context) =>
                            Singleuserread(docid: docid)))));
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    //color: Colors.greenAccent,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                color: Color.fromARGB(255, 198, 243, 241),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                  child: Text(
                    'name: ${data['name']}' +
                        '\nEmail: ${data['email']}' +
                        '\nCity: ${data['addressCity']}',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            );
          }
          return const Center(child: CircularProgressIndicator());
        }));
  }
}
