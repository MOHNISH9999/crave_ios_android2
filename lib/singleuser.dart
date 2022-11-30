import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class Singleuserread extends StatefulWidget {
  final String docid;
  Singleuserread({required this.docid});

  @override
  State<Singleuserread> createState() => _SingleuserreadState();
}

class _SingleuserreadState extends State<Singleuserread> {
  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection("guest");
    return Scaffold(
      appBar: AppBar(
        title: Text('single employee view'),
      ),
      body: FutureBuilder<DocumentSnapshot>(
          future: users.doc(widget.docid).get(),
          builder: ((context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              Map<String, dynamic> data =
                  snapshot.data!.data() as Map<String, dynamic>;
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  children: 
                    [Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Card(
                            shape: StadiumBorder(
                              //<-- 3. SEE HERE
                              side: BorderSide(
                                color: Color.fromARGB(255, 191, 248, 100),
                                width: 2.0,
                              ),
                            ),
                            child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  //crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      'Name: ',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    SizedBox(
                                      width: 100,
                                    ),
                                    Text(
                                      '${data['name']}',
                                      style: TextStyle(fontSize: 20),
                                    )
                                  ],
                                ))),
                        Card(
                            shape: StadiumBorder(
                              //<-- 3. SEE HERE
                              side: BorderSide(
                                color: Color.fromARGB(255, 135, 169, 228),
                                width: 2.0,
                              ),
                            ),
                            child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  //crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      'Mobile Number: ',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      '${data['mobilenumber']}',
                                      style: TextStyle(fontSize: 20),
                                    )
                                  ],
                                ))),
                        Card(
                            shape: StadiumBorder(
                              //<-- 3. SEE HERE
                              side: BorderSide(
                                color: Color.fromARGB(255, 135, 169, 228),
                                width: 2.0,
                              ),
                            ),
                            child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  //crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      'Email: ',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      '${data['email']}',
                                      style: TextStyle(fontSize: 20),
                                    )
                                  ],
                                ))),
                        Card(
                            shape: StadiumBorder(
                              //<-- 3. SEE HERE
                              side: BorderSide(
                                color: Color.fromARGB(255, 135, 169, 228),
                                width: 2.0,
                              ),
                            ),
                            child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  //crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      'Pincode: ',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    SizedBox(
                                      width: 100,
                                    ),
                                    Text(
                                      '${data['Pincode']}',
                                      style: TextStyle(fontSize: 20),
                                    )
                                  ],
                                ))),
                        Card(
                            shape: StadiumBorder(
                              //<-- 3. SEE HERE
                              side: BorderSide(
                                color: Color.fromARGB(255, 135, 169, 228),
                                width: 2.0,
                              ),
                            ),
                            child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  //crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      'Address Street 1: ',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      '${data['addressStreet1']}',
                                      style: TextStyle(fontSize: 20),
                                    )
                                  ],
                                ))),
                        Card(
                            shape: StadiumBorder(
                              //<-- 3. SEE HERE
                              side: BorderSide(
                                color: Color.fromARGB(255, 135, 169, 228),
                                width: 2.0,
                              ),
                            ),
                            child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  //crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      'Address Street 2: ',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      '${data['addressStreet2']}',
                                      style: TextStyle(fontSize: 20),
                                    )
                                  ],
                                ))),
                        Card(
                            shape: StadiumBorder(
                              //<-- 3. SEE HERE
                              side: BorderSide(
                                color: Color.fromARGB(255, 135, 169, 228),
                                width: 2.0,
                              ),
                            ),
                            child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  //crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      'City: ',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    SizedBox(
                                      width: 100,
                                    ),
                                    Text(
                                      '${data['addressCity']}',
                                      style: TextStyle(fontSize: 20),
                                    )
                                  ],
                                ))),
                        Card(
                            shape: StadiumBorder(
                              //<-- 3. SEE HERE
                              side: BorderSide(
                                color: Color.fromARGB(255, 135, 169, 228),
                                width: 2.0,
                              ),
                            ),
                            child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  //crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      'State: ',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    SizedBox(
                                      width: 100,
                                    ),
                                    Text(
                                      '${data['state']}',
                                      style: TextStyle(fontSize: 20),
                                    )
                                  ],
                                ))),
                        Card(
                            shape: StadiumBorder(
                              //<-- 3. SEE HERE
                              side: BorderSide(
                                color: Color.fromARGB(255, 135, 169, 228),
                                width: 2.0,
                              ),
                            ),
                            child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  //crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      'Country: ',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    SizedBox(
                                      width: 100,
                                    ),
                                    Text(
                                      '${data['country']}',
                                      style: TextStyle(fontSize: 20),
                                    )
                                  ],
                                ))),
                        Card(
                            shape: StadiumBorder(
                              //<-- 3. SEE HERE
                              side: BorderSide(
                                color: Color.fromARGB(255, 135, 169, 228),
                                width: 2.0,
                              ),
                            ),
                            child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  //crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      'Company Name: ',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      '${data['comapnyName']}',
                                      style: TextStyle(fontSize: 20),
                                    )
                                  ],
                                ))),
                        Card(
                            shape: StadiumBorder(
                              //<-- 3. SEE HERE
                              side: BorderSide(
                                color: Color.fromARGB(255, 135, 169, 228),
                                width: 2.0,
                              ),
                            ),
                            child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  //crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      'Comapny Address: ',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      '${data['comapanyAdd']}',
                                      style: TextStyle(fontSize: 20),
                                    )
                                  ],
                                ))),
                        
                      ],
                    ),
                  ],
                ),
              );
            }
            return const Center(child: CircularProgressIndicator());
          })),
    );
  }
}
