import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../crud/add.dart';
import '../crud/update_data.dart';
import './sem1.dart';

final adder = FirebaseFirestore.instance;

final TextEditingController y1 = TextEditingController();
final TextEditingController y2 = TextEditingController();
final TextEditingController y3 = TextEditingController();
final TextEditingController y4 = TextEditingController();
final TextEditingController y5 = TextEditingController();
final TextEditingController y6 = TextEditingController();

class SemUpdate extends StatefulWidget {
  @override
  _Sem1State createState() => _Sem1State();
}

class _Sem1State extends State<SemUpdate> {
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
    adder.collection("test").doc(newusn.text.toUpperCase()).update(
      {
        "USN": newusn.text,
        "Name": newname.text,
        "Branch": newbranch.text,
        "Semester 1": {
          "\n" + s1: y1.text + " (" + grader(y1.text) + ")",
          "\n" + s2: y2.text + " (" + grader(y2.text) + ")",
          "\n" + s3: y3.text + " (" + grader(y3.text) + ")",
          "\n" + s4: y4.text + " (" + grader(y4.text) + ")",
          "\n" + s5: y5.text + " (" + grader(y5.text) + ")",
          "\n" + s6: y6.text + " (" + grader(y6.text) + ")",
          "\nPercentage":
              percent(y1.text, y2.text, y3.text, y4.text, y5.text, y6.text) + "\n",
        },
      },
    ).then(
      (_) {
        print("Added!");
      },
    );
  }

  String s1, s2, s3, s4, s5, s6;

  List choice = [
    "Mathematics 1 (UMA113C)",
    "Electrical (UEE164C)",
    "Physics (UPH162C)",
    "Constitution of India (UHS126M)",
    "C Programming (UCS165C)",
    "Mechanical Engineering (UME263C)",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Update Data'),
        elevation: 1.0,
      ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(),
          child: Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              children: <Widget>[
                Wrap(
                  alignment: WrapAlignment.spaceEvenly,
                  // Use main axis alignment if switching back to rows
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: DropdownButtonFormField(
                        // decoration: const InputDecoration(
                        //   border: const OutlineInputBorder(),
                        // ),
                        //controller: m1,
                        hint: Text(
                          "Select subject 1",
                          style: TextStyle(
                            color: Colors.teal[700],
                          ),
                        ),
                        dropdownColor: Colors.white,
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 36,
                        value: s1,
                        onChanged: (newValue) {
                          setState(() {
                            s1 = newValue;
                          });
                        },
                        items: choice.map(
                          (valueItem) {
                            return DropdownMenuItem(
                                value: valueItem, child: Text(valueItem));
                          },
                        ).toList(),
                      ),
                    ),
                    //Spacer(flex: 2),
                    Expanded(
                      child: TextFormField(
                        controller: y1,
                        decoration: const InputDecoration(
                          hintText: 'Enter marks in subject 1',
                          labelText: 'Marks 1',
                          labelStyle: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Wrap(
                  alignment: WrapAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: DropdownButtonFormField(
                        hint: Text(
                          "Select subject 2",
                          style: TextStyle(
                            color: Colors.teal[700],
                          ),
                        ),
                        dropdownColor: Colors.white,
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 36,
                        value: s2,
                        onChanged: (newValue) {
                          setState(() {
                            s2 = newValue;
                          });
                        },
                        items: choice.map(
                          (valueItem) {
                            return DropdownMenuItem(
                                value: valueItem, child: Text(valueItem));
                          },
                        ).toList(),
                      ),
                    ),
                    Expanded(
                      child: TextFormField(
                        controller: y2,
                        decoration: const InputDecoration(
                          hintText: 'Enter marks in subject 2',
                          labelText: 'Marks 2',
                          labelStyle: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Wrap(
                  alignment: WrapAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: DropdownButtonFormField(
                        hint: Text("Select subject 3",
                            style: TextStyle(
                              color: Colors.teal[700],
                            )),
                        dropdownColor: Colors.white,
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 36,
                        value: s3,
                        onChanged: (newValue) {
                          setState(() {
                            s3 = newValue;
                          });
                        },
                        items: choice.map(
                          (valueItem) {
                            return DropdownMenuItem(
                                value: valueItem, child: Text(valueItem));
                          },
                        ).toList(),
                      ),
                    ),
                    Spacer(flex: 2),
                    Expanded(
                      child: TextFormField(
                        controller: y3,
                        decoration: const InputDecoration(
                          hintText: 'Enter marks in subject 3',
                          labelText: 'Marks 3',
                          labelStyle: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Wrap(
                  alignment: WrapAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: DropdownButtonFormField(
                        //controller: m1,
                        hint: Text("Select subject 4",
                            style: TextStyle(
                              color: Colors.teal[700],
                            )),
                        dropdownColor: Colors.white,
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 36,
                        value: s4,
                        onChanged: (newValue) {
                          setState(() {
                            s4 = newValue;
                          });
                        },
                        items: choice.map(
                          (valueItem) {
                            return DropdownMenuItem(
                                value: valueItem, child: Text(valueItem));
                          },
                        ).toList(),
                      ),
                    ),
                    //Spacer(flex: 2),
                    Expanded(
                      child: TextFormField(
                        controller: y4,
                        decoration: const InputDecoration(
                          hintText: 'Enter marks in subject 4',
                          labelText: 'Marks 4',
                          labelStyle: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Wrap(
                  alignment: WrapAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: DropdownButtonFormField(
                        //controller: m1,
                        hint: Text("Select subject 5",
                            style: TextStyle(
                              color: Colors.teal[700],
                            )),
                        dropdownColor: Colors.white,
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 36,
                        value: s5,
                        onChanged: (newValue) {
                          setState(() {
                            s5 = newValue;
                          });
                        },
                        items: choice.map(
                          (valueItem) {
                            return DropdownMenuItem(
                                value: valueItem, child: Text(valueItem));
                          },
                        ).toList(),
                      ),
                    ),
                    Expanded(
                      child: TextFormField(
                        controller: y5,
                        decoration: const InputDecoration(
                          hintText: 'Enter marks in subject 5',
                          labelText: 'Marks 5',
                          labelStyle: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Wrap(
                  alignment: WrapAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: DropdownButtonFormField(
                        //controller: m1,
                        hint: Text("Select subject 6",
                            style: TextStyle(
                              color: Colors.teal[700],
                            )),
                        dropdownColor: Colors.white,
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 36,
                        value: s6,
                        onChanged: (newValue) {
                          setState(() {
                            s6 = newValue;
                          });
                        },
                        items: choice.map(
                          (valueItem) {
                            return DropdownMenuItem(
                                value: valueItem, child: Text(valueItem));
                          },
                        ).toList(),
                      ),
                    ),
                    Expanded(
                      child: TextFormField(
                        controller: y6,
                        decoration: const InputDecoration(
                          hintText: 'Enter marks in subject 6',
                          labelText: 'Marks 6',
                          labelStyle: TextStyle(
                            color: Colors.black,
                          ),
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
