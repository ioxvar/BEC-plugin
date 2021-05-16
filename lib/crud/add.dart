import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

final TextEditingController name = TextEditingController();
final TextEditingController semester = TextEditingController();
final TextEditingController branch = TextEditingController();
final TextEditingController docid = TextEditingController();
final TextEditingController s1 = TextEditingController();
final TextEditingController s2 = TextEditingController();
final TextEditingController s3 = TextEditingController();
final TextEditingController s4 = TextEditingController();
final TextEditingController s5 = TextEditingController();
final TextEditingController s6 = TextEditingController();
final TextEditingController m1 = TextEditingController();
final TextEditingController m2 = TextEditingController();
final TextEditingController m3 = TextEditingController();
final TextEditingController m4 = TextEditingController();
final TextEditingController m5 = TextEditingController();
final TextEditingController m6 = TextEditingController();

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
    adder.collection("test").doc(docid.text).set(
      {
        "USN": docid.text,
        "name": name.text,
        "branch": branch.text,
        "semester": semester.text,
        //"email": "someid@gmail.com",
        semester.text: {
          s1.text: m1.text,
          s2.text: m2.text,
          s3.text: m3.text,
          s4.text: m4.text,
          s5.text: m5.text,
          s6.text: m6.text,
        },

        /*
      Sub collection (mapping inside  DOCUMENT would be better) >>> this
      Currently can't figure out how to create a collection inside a document
      Use that when resolved ig
      
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
      }*/
      },
    ).then(
      (_) {
        print("Added!");
      },
    );
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
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(),
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
                      controller: branch,
                      decoration: const InputDecoration(
                        hintText: 'Enter course/branch',
                        labelText: 'Branch',
                      ),
                    ),
                    TextFormField(
                      controller: semester,
                      decoration: const InputDecoration(
                        //hintText: '',
                        labelText: 'Semester',
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(15)),
                    Text(
                      'Enter data for Semester',
                      style: TextStyle(
                        color: Colors.teal[600],
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    Row(
                      // mainAxisAlignment: mainAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: s1,
                            decoration: const InputDecoration(
                              hintText: 'Enter subject 1',
                              labelText: 'Subject 1',
                            ),
                          ),
                        ),
                        //Spacer(flex: 2),
                        Expanded(
                          child: TextFormField(
                            controller: m1,
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
                            controller: s2,
                            decoration: const InputDecoration(
                              hintText: 'Enter subject 2',
                              labelText: 'Subject 2',
                            ),
                          ),
                        ),
                        //Spacer(flex: 2),
                        Expanded(
                          child: TextFormField(
                            controller: m2,
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
                            controller: s3,
                            decoration: const InputDecoration(
                              hintText: 'Enter subject 3',
                              labelText: 'Subject 3',
                            ),
                          ),
                        ),
                        //Spacer(flex: 2),
                        Expanded(
                          child: TextFormField(
                            controller: m3,
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
                            controller: s4,
                            decoration: const InputDecoration(
                              hintText: 'Enter subject 4',
                              labelText: 'Subject 4',
                            ),
                          ),
                        ),
                        //Spacer(flex: 2),
                        Expanded(
                          child: TextFormField(
                            controller: m4,
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
                            controller: s5,
                            decoration: const InputDecoration(
                              hintText: 'Enter subject 5',
                              labelText: 'Subject 5',
                            ),
                          ),
                        ),
                        //Spacer(flex: 2),
                        Expanded(
                          child: TextFormField(
                            controller: m5,
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
                            controller: s6,
                            decoration: const InputDecoration(
                              hintText: 'Enter subject 6',
                              labelText: 'Subject 6',
                            ),
                          ),
                        ),
                        //Spacer(flex: 2),
                        Expanded(
                          child: TextFormField(
                            controller: m6,
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
        ));
  }
}
