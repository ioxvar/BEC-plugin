import 'package:flutter/material.dart';
import '../crud/add.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final adder = FirebaseFirestore.instance;
final TextEditingController ss1 = TextEditingController();
final TextEditingController ss2 = TextEditingController();
final TextEditingController ss3 = TextEditingController();
final TextEditingController ss4 = TextEditingController();
final TextEditingController ss5 = TextEditingController();
final TextEditingController ss6 = TextEditingController();
final TextEditingController mm1 = TextEditingController();
final TextEditingController mm2 = TextEditingController();
final TextEditingController mm3 = TextEditingController();
final TextEditingController mm4 = TextEditingController();
final TextEditingController mm5 = TextEditingController();
final TextEditingController mm6 = TextEditingController();

class Sem2 extends StatelessWidget {
  grader(sub) {
    var m = int.parse(sub);
    if (m >= 90) {
      return "S";
    } else if (m >= 80) {
      return "A";
    } else if (m >= 70) {
      return "B";
    } else if (m >= 60) {
      return "C";
    } else if (m >= 50) {
      return "D";
    } else if (m >= 40) {
      return "E";
    } else if (m < 40) {
      return "F";
    } else
      return "W";
  }

  add() {
    adder.collection("test").doc(docid.text).update({
      "Semester 2": {
        ss1.text: mm1.text + " (" + grader(mm1.text) + ")",
        ss2.text: mm2.text + " (" + grader(mm2.text) + ")",
        ss3.text: mm3.text + " (" + grader(mm3.text) + ")",
        ss4.text: mm4.text + " (" + grader(mm4.text) + ")",
        ss5.text: mm5.text + " (" + grader(mm5.text) + ")",
        ss6.text: mm6.text + " (" + grader(mm6.text) + ")",
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
        title: Text('Semester 2'),
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
                      child: TextField(
                        controller: ss1,
                        decoration: const InputDecoration(
                          hintText: 'Enter subject 1',
                          labelText: 'Subject 1',
                        ),
                      ),
                    ),
                    //Spacer(flex: 2),
                    Expanded(
                      child: TextField(
                        controller: mm1,
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
                      child: TextField(
                        controller: ss2,
                        decoration: const InputDecoration(
                          hintText: 'Enter subject 2',
                          labelText: 'Subject 2',
                        ),
                      ),
                    ),
                    //Spacer(flex: 2),
                    Expanded(
                      child: TextField(
                        controller: mm2,
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
                      child: TextField(
                        controller: ss3,
                        decoration: const InputDecoration(
                          hintText: 'Enter subject 3',
                          labelText: 'Subject 3',
                        ),
                      ),
                    ),
                    //Spacer(flex: 2),
                    Expanded(
                      child: TextField(
                        controller: mm3,
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
                      child: TextField(
                        controller: ss4,
                        decoration: const InputDecoration(
                          hintText: 'Enter subject 4',
                          labelText: 'Subject 4',
                        ),
                      ),
                    ),
                    //Spacer(flex: 2),
                    Expanded(
                      child: TextField(
                        controller: mm4,
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
                      child: TextField(
                        controller: ss5,
                        decoration: const InputDecoration(
                          hintText: 'Enter subject 5',
                          labelText: 'Subject 5',
                        ),
                      ),
                    ),
                    //Spacer(flex: 2),
                    Expanded(
                      child: TextField(
                        controller: mm5,
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
                      child: TextField(
                        controller: ss6,
                        decoration: const InputDecoration(
                          hintText: 'Enter subject 6',
                          labelText: 'Subject 6',
                        ),
                      ),
                    ),
                    //Spacer(flex: 2),
                    Expanded(
                      child: TextField(
                        controller: mm6,
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
                    if (docid.text != "") {
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
