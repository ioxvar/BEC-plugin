import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:becplugin/semesters/chosen.dart';

final adder = FirebaseFirestore.instance;

final TextEditingController name = TextEditingController();
final TextEditingController semester = TextEditingController();
final TextEditingController branch = TextEditingController();
final TextEditingController docid = TextEditingController();

List<TextEditingController> sub = [
  for (int i = 1; i < 50; i++) TextEditingController()
];
List<TextEditingController> sem = [
  for (int i = 1; i < 9; i++) TextEditingController()
];

class AddData extends StatefulWidget {
  @override
  AddDataState createState() => AddDataState();
}

class AddDataState extends State<AddData> {
  add() {
    /*
    USE IN CASE SORTING BY USER_ID, not really necessary
    var user = FirebaseAuth.instance.currentUser;
    */
    adder.collection("test").doc(docid.text).set(
      {
        "USN": docid.text,
        "Name": name.text,
        "Branch": branch.text,
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
      body: SingleChildScrollView(
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
                //Padding(padding: EdgeInsets.fromLTRB(100, 90, 20, 30)),
                TextFormField(
                  controller: name,
                  decoration: const InputDecoration(
                    // contentPadding: EdgeInsets.only(
                    //   left: 10), //Change this value to custom as you like
                    //   isDense: true,
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
                Padding(padding: EdgeInsets.all(15)),
                Text(
                  'Choose Semester:',
                  style: TextStyle(
                    color: Colors.teal[600],
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                    decoration: TextDecoration.underline,
                  ),
                ),
                SizedBox(height: 30.0),
                Container(
                  height: 40.0,
                  width: 200,
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black,
                            style: BorderStyle.solid,
                            width: 1.0),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20.0)),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(Choice(1));
                      },
                      child: Center(
                        child: Text('Semester 1',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat')),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
                Container(
                  height: 40.0,
                  width: 200,
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black,
                            style: BorderStyle.solid,
                            width: 1.0),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20.0)),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(Choice(2));
                      },
                      child: Center(
                        child: Text('Semester 2',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat')),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
                Container(
                  height: 40.0,
                  width: 200,
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black,
                            style: BorderStyle.solid,
                            width: 1.0),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20.0)),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(Choice(3));
                      },
                      child: Center(
                        child: Text('Semester 3',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat')),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
                Container(
                  height: 40.0,
                  width: 200,
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black,
                            style: BorderStyle.solid,
                            width: 1.0),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20.0)),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(Choice(4));
                      },
                      child: Center(
                        child: Text('Semester 4',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat')),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
                Container(
                  height: 40.0,
                  width: 200,
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black,
                            style: BorderStyle.solid,
                            width: 1.0),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20.0)),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(Choice(5));
                      },
                      child: Center(
                        child: Text('Semester 5',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat')),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
                Container(
                  height: 40.0,
                  width: 200,
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black,
                            style: BorderStyle.solid,
                            width: 1.0),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20.0)),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(Choice(6));
                      },
                      child: Center(
                        child: Text('Semester 6',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat')),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
                Container(
                  height: 40.0,
                  width: 200,
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black,
                            style: BorderStyle.solid,
                            width: 1.0),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20.0)),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(Choice(7));
                      },
                      child: Center(
                        child: Text('Semester 7',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat')),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
                Container(
                  height: 40.0,
                  width: 200,
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black,
                            style: BorderStyle.solid,
                            width: 1.0),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20.0)),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(Choice(8));
                      },
                      child: Center(
                        child: Text('Semester 8',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat')),
                      ),
                    ),
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
