import 'package:becplugin/crud/add.dart';
//import 'package:becplugin/semesters/sem1.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final adder = FirebaseFirestore.instance;

class Fetch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CollectionReference rcv = adder.collection('test');
    return Scaffold(
      appBar: AppBar(
        title: Text('Fetch'),
      ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(),
          child: FutureBuilder<DocumentSnapshot>(
            future: rcv.doc(docid.text).get(),
            builder: (BuildContext context,
                AsyncSnapshot<DocumentSnapshot> snapshot) {
              if (snapshot.hasError) {
                return Text(
                  "Something went wrong",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                  ),
                );
              }

              if (snapshot.hasData && !snapshot.data.exists) {
                return Padding(
                  padding: EdgeInsets.fromLTRB(105, 350, 100, 20),
                  child: Text(
                    "Data does not exist",
                    style: TextStyle(
                      color: Colors.teal[600],
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                );
              }

              if (snapshot.connectionState == ConnectionState.done) {
                Map<String, dynamic> data = snapshot.data.data();
                Padding(padding: EdgeInsets.fromLTRB(10, 10, 0, 0));
                return SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(),
                    child: Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "Name: ${data['Name']}",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                            Text(
                              "\nUSN: ${data['USN']}",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                            Text(
                              "\nBranch: ${data['Branch']}",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                            Text(
                              "\nSemester 1: ${data['Semester 1']}",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                            Text(
                              "\nSemester 2: ${data['Semester 2']}",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                            Text(
                              "\nSemester 3: ${data['Semester 3']}",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                            Text(
                              "\nSemester 4: ${data['Semester 4']}",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                            Text(
                              "\nSemester 5: ${data['Semester 5']}",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                            Text(
                              "\nSemester 6: ${data['Semester 6']}",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                            Text(
                              "\nSemester 7: ${data['Semester 7']}",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                            Text(
                              "\nSemester 8: ${data['Semester 8']}",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                          ],
                        )),
                  ),
                );
              }

              return Text("loading");
            },
          ),
        ),
      ),
    );
  }
}
