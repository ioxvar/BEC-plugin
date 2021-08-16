import 'package:flutter/material.dart';
import '../crud/add.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import './sem1.dart';

final adder = FirebaseFirestore.instance;
final TextEditingController c1 = TextEditingController();
final TextEditingController c2 = TextEditingController();
final TextEditingController c3 = TextEditingController();
final TextEditingController c4 = TextEditingController();
final TextEditingController c5 = TextEditingController();
final TextEditingController c6 = TextEditingController();
final TextEditingController d1 = TextEditingController();
final TextEditingController d2 = TextEditingController();
final TextEditingController d3 = TextEditingController();
final TextEditingController d4 = TextEditingController();
final TextEditingController d5 = TextEditingController();
final TextEditingController d6 = TextEditingController();

class Sem4 extends StatefulWidget {
  @override
  _Sem4State createState() => _Sem4State();
}

class _Sem4State extends State<Sem4> {
  add() {
    adder.collection("test").doc(docid.text.toUpperCase()).update({
      "Semester 4": {
        "\n" + s1: d1.text + " (" + grader(d1.text) + ")",
        "\n" + s2: d2.text + " (" + grader(d2.text) + ")",
        "\n" + s3: d3.text + " (" + grader(d3.text) + ")",
        "\n" + s4: d4.text + " (" + grader(d4.text) + ")",
        "\n" + s5: d5.text + " (" + grader(d5.text) + ")",
        "\n" + s6: d6.text + " (" + grader(d6.text) + ")",
        "\nPercentage":
            percent(d1.text, d2.text, d3.text, d4.text, d5.text, d6.text) + "\n",
      },
    }).then(
      (_) {
        print("Added!");
      },
    );
  }

  String s1, s2, s3, s4, s5, s6;

  List choice = [
    "Mathematics 4 (UMA436C)",
    "Data Structures (UCS451C)",
    "DBMS (UCS452C)",
    "Operating Systems (UCS453C)",
    "Microcontrollers (UCS454C)",
    "Softskills (UHS003N)",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Semester 4'),
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
                  children: [
                    Expanded(
                      child: DropdownButtonFormField(
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
                    Expanded(
                      child: TextField(
                        controller: c1,
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
                    //Spacer(flex: 2),
                    Expanded(
                      child: TextField(
                        controller: d2,
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
                        hint: Text(
                          "Select subject 3",
                          style: TextStyle(
                            color: Colors.teal[700],
                          ),
                        ),
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
                    //Spacer(flex: 2),
                    Expanded(
                      child: TextField(
                        controller: d3,
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
                        hint: Text(
                          "Select subject 4",
                          style: TextStyle(
                            color: Colors.teal[700],
                          ),
                        ),
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
                      child: TextField(
                        controller: d4,
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
                        hint: Text(
                          "Select subject 5",
                          style: TextStyle(
                            color: Colors.teal[700],
                          ),
                        ),
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
                    //Spacer(flex: 2),
                    Expanded(
                      child: TextField(
                        controller: d5,
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
                        hint: Text(
                          "Select subject 6",
                          style: TextStyle(
                            color: Colors.teal[700],
                          ),
                        ),
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
                    //Spacer(flex: 2),
                    Expanded(
                      child: TextField(
                        controller: d6,
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
