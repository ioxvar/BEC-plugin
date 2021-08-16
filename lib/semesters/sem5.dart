import 'package:flutter/material.dart';
import '../crud/add.dart';
import './sem1.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final adder = FirebaseFirestore.instance;
final TextEditingController f1 = TextEditingController();
final TextEditingController f2 = TextEditingController();
final TextEditingController f3 = TextEditingController();
final TextEditingController f4 = TextEditingController();
final TextEditingController f5 = TextEditingController();
final TextEditingController f6 = TextEditingController();

class Sem5 extends StatefulWidget {
  @override
  _Sem5State createState() => _Sem5State();
}

class _Sem5State extends State<Sem5> {
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
    adder.collection("test").doc(docid.text.toUpperCase()).update({
      "Semester 5": {
        "\n" + s1: f1.text + " (" + grader(f1.text) + ")",
        "\n" + s2: f2.text + " (" + grader(f2.text) + ")",
        "\n" + s3: f3.text + " (" + grader(f3.text) + ")",
        "\n" + s4: f4.text + " (" + grader(f4.text) + ")",
        "\n" + s5: f5.text + " (" + grader(f5.text) + ")",
        "\n" + s6: f6.text + " (" + grader(f6.text) + ")",
        "\nPercentage":
            percent(f1.text, f2.text, f3.text, f4.text, f5.text, f6.text) + "\n",
      },
    }).then(
      (_) {
        print("Added!");
      },
    );
  }

  String s1, s2, s3, s4, s5, s6;

  List choice = [
    "Algorithms (UCS551C)",
    "Finite Automata (UCS552C)",
    "Data Communications (UCS553C)",
    "System Software (UCS554C)",
    "Artificial Intelligence (UCS041E)",
    "Python (UCS065E)",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Semester 5'),
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
                        controller: f1,
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
                        controller: f2,
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
                        controller: f3,
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
                        controller: f4,
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
                        controller: f5,
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
                        controller: f6,
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
