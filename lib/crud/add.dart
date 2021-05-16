import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

final TextEditingController name = TextEditingController();
final TextEditingController semester = TextEditingController();
final TextEditingController branch = TextEditingController();
final TextEditingController docid = TextEditingController();

final adder = FirebaseFirestore.instance;

class AddData extends StatefulWidget {
  @override
  _AddDataState createState() => _AddDataState();
}

int val = 1;

class _AddDataState extends State<AddData> {
  add() {
    /*
    USE IN CASE SORTING BY USER_ID, not really necessary
    var user = FirebaseAuth.instance.currentUser;
    */
    adder.collection("test").doc(docid.text).set({
      "USN": docid.text,
      "name": name.text,
      "branch": branch.text,
      "semester": semester.text,
      "email": "someid@gmail.com",

      /*
      Sub collection (mapping inside  DOCUMENT would be better) >>> this
      Currently can't figure out how to create a collection inside a document
      Use that when resolved ig
      */
      "sem1": {
        "sub1": 15,
        "sub2": 10,
        "sub3": 9,
        "sub4": 15,
        "sub5": 10,
        "sub6": 9,
      },
      "sem2": {
        "sub1": 15,
        "sub2": 10,
        "sub3": 9,
        "sub4": 15,
        "sub5": 10,
        "sub6": 9,
      },
      "sem3": {
        "sub1": 15,
        "sub2": 10,
        "sub3": 9,
        "sub4": 15,
        "sub5": 10,
        "sub6": 9,
      },
      "sem4": {
        "sub1": 15,
        "sub2": 10,
        "sub3": 9,
        "sub4": 15,
        "sub5": 10,
        "sub6": 9,
      },
      "sem5": {
        "sub1": 15,
        "sub2": 10,
        "sub3": 9,
        "sub4": 15,
        "sub5": 10,
        "sub6": 9,
      },
      "sem6": {
        "sub1": 15,
        "sub2": 10,
        "sub3": 9,
        "sub4": 15,
        "sub5": 10,
        "sub6": 9,
      },
      "sem7": {
        "sub1": 15,
        "sub2": 10,
        "sub3": 9,
        "sub4": 15,
        "sub5": 10,
        "sub6": 9,
      },
      "sem8": {
        "sub1": 15,
        "sub2": 10,
        "sub3": 9,
        "sub4": 15,
        "sub5": 10,
        "sub6": 9,
      }
    }).then((_) {
      print("Added!");
      /*
      adder.collection("test")
          .doc(semester.text)
          .collection("semester")
          .doc(semester.text)
          .set({
        "sem": {
          "sub1": 15,
          "sub2": 10,
          "sub3": 9,
          "sub4": 15,
          "sub5": 10,
          "sub6": 9,
        },
      });*/
    });
  }

  @override
  Widget build(BuildContext context) {
    //return SingleChildScrollView(
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Add'),
        elevation: 1.0,
      ),
      body: Center(
        child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                TextFormField(
                  controller: docid,
                  decoration: const InputDecoration(
                    hintText: 'Enter USN',
                    labelText: 'USN',
                  ),
                ),
                TextFormField(
                  controller: name,
                  decoration: const InputDecoration(
                    hintText: 'What do people call you?',
                    labelText: 'Name',
                  ),
                ),
                TextFormField(
                  controller: semester,
                  decoration: const InputDecoration(
                    //hintText: '',
                    labelText: 'Semester',
                  ),
                ),
                TextFormField(
                  controller: branch,
                  decoration: const InputDecoration(
                    hintText: 'Enter course/branch',
                    labelText: 'Branch',
                  ),
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
            )),
      ),
    );
  }
}
