import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../crud/add.dart';

import './sem1.dart';
import './sem2.dart';
import './sem3.dart';
import './sem4.dart';
import './sem5.dart';
import './sem6.dart';

import './sem7.dart';

final TextEditingController k1 = TextEditingController();
final TextEditingController k2 = TextEditingController();
final TextEditingController k3 = TextEditingController();
final TextEditingController k4 = TextEditingController();
final TextEditingController k5 = TextEditingController();
final TextEditingController k6 = TextEditingController();
final TextEditingController l1 = TextEditingController();
final TextEditingController l2 = TextEditingController();
final TextEditingController l3 = TextEditingController();
final TextEditingController l4 = TextEditingController();
final TextEditingController l5 = TextEditingController();
final TextEditingController l6 = TextEditingController();

final adder = FirebaseFirestore.instance;

class Sem8 extends StatelessWidget {
  add() {
    adder.collection("test").doc(docid.text).set({
      "Semester 8": {
        "USN": docid.text,
        "Name": name.text,
        "Branch": branch.text,
        "Semester 1": {
          s1.text: m1.text,
          s2.text: m2.text,
          s3.text: m3.text,
          s4.text: m4.text,
          s5.text: m5.text,
          s6.text: m6.text,
        },
        "Semester 2": {
          ss1.text: mm1.text,
          ss2.text: mm2.text,
          ss3.text: mm3.text,
          ss4.text: mm4.text,
          ss5.text: mm5.text,
          ss6.text: mm6.text,
        },
        "Semester 3": {
          a1.text: b1.text,
          a2.text: b2.text,
          a3.text: b3.text,
          a4.text: b4.text,
          a5.text: b5.text,
          a6.text: b6.text,
        },
        "Semester 4": {
          c1.text: d1.text,
          c2.text: d2.text,
          c3.text: d3.text,
          c4.text: d4.text,
          c5.text: d5.text,
          c6.text: d6.text,
        },
        "Semester 5": {
          e1.text: f1.text,
          e2.text: f2.text,
          e3.text: f3.text,
          e4.text: f4.text,
          e5.text: f5.text,
          e6.text: f6.text,
        },
        "Semester 6": {
          g1.text: h1.text,
          g2.text: h2.text,
          g3.text: h3.text,
          g4.text: h4.text,
          g5.text: h5.text,
          g6.text: h6.text,
        },
        "Semester 7": {
          i1.text: j1.text,
          i2.text: j2.text,
          i3.text: j3.text,
          i4.text: j4.text,
          i5.text: j5.text,
          i6.text: j6.text,
        },
        k1.text: l1.text,
        k2.text: l2.text,
        k3.text: l3.text,
        k4.text: l4.text,
        k5.text: l5.text,
        k6.text: l6.text,
      },
    }).then(
      (_) {
        print("Added!");
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Semester 8'),
        elevation: 1.0,
      ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(),
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Row(
                  // mainAxisAlignment: mainAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: k1,
                        decoration: const InputDecoration(
                          hintText: 'Enter subject 1',
                          labelText: 'Subject 1',
                        ),
                      ),
                    ),
                    //Spacer(flex: 2),
                    Expanded(
                      child: TextFormField(
                        controller: l1,
                        decoration: const InputDecoration(
                          hintText: 'Enter marks in subject 1',
                          labelText: 'Marks',
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  // mainAxisAlignment: mainAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: k2,
                        decoration: const InputDecoration(
                          hintText: 'Enter subject 2',
                          labelText: 'Subject 2',
                        ),
                      ),
                    ),
                    //Spacer(flex: 2),
                    Expanded(
                      child: TextFormField(
                        controller: l2,
                        decoration: const InputDecoration(
                          hintText: 'Enter marks in subject 2',
                          labelText: 'Marks',
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  // mainAxisAlignment: mainAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: k3,
                        decoration: const InputDecoration(
                          hintText: 'Enter subject 3',
                          labelText: 'Subject 3',
                        ),
                      ),
                    ),
                    //Spacer(flex: 2),
                    Expanded(
                      child: TextFormField(
                        controller: l3,
                        decoration: const InputDecoration(
                          hintText: 'Enter marks in subject 3',
                          labelText: 'Marks',
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  // mainAxisAlignment: mainAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: k4,
                        decoration: const InputDecoration(
                          hintText: 'Enter subject 4',
                          labelText: 'Subject 4',
                        ),
                      ),
                    ),
                    //Spacer(flex: 2),
                    Expanded(
                      child: TextFormField(
                        controller: l4,
                        decoration: const InputDecoration(
                          hintText: 'Enter marks in subject 4',
                          labelText: 'Marks',
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  // mainAxisAlignment: mainAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: k5,
                        decoration: const InputDecoration(
                          hintText: 'Enter subject 5',
                          labelText: 'Subject 5',
                        ),
                      ),
                    ),
                    //Spacer(flex: 2),
                    Expanded(
                      child: TextFormField(
                        controller: l5,
                        decoration: const InputDecoration(
                          hintText: 'Enter marks in subject 5',
                          labelText: 'Marks',
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  // mainAxisAlignment: mainAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: k6,
                        decoration: const InputDecoration(
                          hintText: 'Enter subject 6',
                          labelText: 'Subject 6',
                        ),
                      ),
                    ),
                    //Spacer(flex: 2),
                    Expanded(
                      child: TextFormField(
                        controller: l6,
                        decoration: const InputDecoration(
                          hintText: 'Enter marks in subject 6',
                          labelText: 'Marks',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50.0),
                GestureDetector(
                  onTap: () async {
                    if (name.text != "") {
                      add();
                      Navigator.of(context).pop();
                    } else {
                      Navigator.of(context).pop();
                    }
                  },
                  child: LayoutBuilder(
                    builder:
                        (BuildContext context, BoxConstraints constraints) {
                      return Container(
                          height: 40.0,
                          width: 120.0,
                          child: Material(
                              borderRadius: BorderRadius.circular(30.0),
                              shadowColor: Colors.teal[600],
                              color: Colors.teal[600],
                              elevation: 7.0,
                              child: Center(
                                  child: Text('ADD DATA',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Montserrat')))));
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
