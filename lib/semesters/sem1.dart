import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../crud/add.dart';

final adder = FirebaseFirestore.instance;

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

percent(q, w, e, r, t, y) {
  int sum;
  double percentage;
  var z = int.parse(q),
      x = int.parse(w),
      c = int.parse(e),
      v = int.parse(r),
      b = int.parse(t),
      n = int.parse(y);
  sum = z + x + c + v + b + n;
  percentage = (sum / 600) * 100;
  return percentage.toString();
}
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


class Sem1 extends StatefulWidget {
  @override
  _Sem1State createState() => _Sem1State();
}

class _Sem1State extends State<Sem1> {
  
  add() {
    adder.collection("test").doc(docid.text.toUpperCase()).set(
      {
        "USN": docid.text.toUpperCase(),
        "Name": name.text,
        "Branch": branch.text,
        "Semester 1": {
          "\n" + s1.text.toLowerCase(): m1.text + " (" + grader(m1.text) + ")",
          "\n" + s2.text.toLowerCase(): m2.text + " (" + grader(m2.text) + ")",
          "\n" + s3.text.toLowerCase(): m3.text + " (" + grader(m3.text) + ")",
          "\n" + s4.text.toLowerCase(): m4.text + " (" + grader(m4.text) + ")",
          "\n" + s5.text.toLowerCase(): m5.text + " (" + grader(m5.text) + ")",
          "\n" + s6.text.toLowerCase(): m6.text + " (" + grader(m6.text) + ")",
          "\nPercentage":
              percent(m1.text, m2.text, m3.text, m4.text, m5.text, m6.text),
        },
      },
      SetOptions(merge: true),
    ).then(
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
        title: Text('Semester 1'),
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
