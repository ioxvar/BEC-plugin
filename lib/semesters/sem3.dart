import 'package:flutter/material.dart';
import '../crud/add.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import './sem1.dart';

final adder = FirebaseFirestore.instance;
final TextEditingController b1 = TextEditingController();
final TextEditingController b2 = TextEditingController();
final TextEditingController b3 = TextEditingController();
final TextEditingController b4 = TextEditingController();
final TextEditingController b5 = TextEditingController();
final TextEditingController b6 = TextEditingController();

class Sem3 extends StatefulWidget {
  @override
  _Sem3State createState() => _Sem3State();
}

class _Sem3State extends State<Sem3> {
  add() {
    adder.collection("test").doc(docid.text.toUpperCase()).update({
      "Semester 3": {
        "\n" + s1: b1.text + " (" + grader(b1.text) + ")",
        "\n" + s2: b2.text + " (" + grader(b2.text) + ")",
        "\n" + s3: b3.text + " (" + grader(b3.text) + ")",
        "\n" + s4: b4.text + " (" + grader(b4.text) + ")",
        "\n" + s5: b5.text + " (" + grader(b5.text) + ")",
        "\n" + s6: b6.text + " (" + grader(b6.text) + ")",
        "\nPercentage":
            percent(b1.text, b2.text, b3.text, b4.text, b5.text, b6.text),
      },
    }).then(
      (_) {
        print("Added!");
      },
    );
  }

  String s1, s2, s3, s4, s5, s6;

  List choice = [
    "Mathematics 3 (UMA336C)",
    "Digital Systems (UCS351C)",
    "Computer Organization (UCS352C)",
    "OOP with Java (UCS353C)",
    "Communication & Ethics (UCS354H)",
    "Softskills (UHS002N)",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Semester 3'),
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
                        controller: b1,
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
                        controller: b2,
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
                        controller: b3,
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
                        controller: b4,
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
                        controller: b5,
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
                        controller: b6,
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
