import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

final TextEditingController name = TextEditingController();
final TextEditingController cmpny = TextEditingController();
final TextEditingController agein = TextEditingController();

class AddData extends StatefulWidget {
  @override
  _AddDataState createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {
  Map data;

  add() {
    Map<String, dynamic> data = {
      "name": name.text,
      "occupation": cmpny.text,
      "age": agein.text,
    };
    CollectionReference collectionReference =
        FirebaseFirestore.instance.collection('test');
    collectionReference.add(data);
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
                  controller: name,
                  decoration: const InputDecoration(
                    hintText: 'What do people call you?',
                    labelText: 'Name',
                  ),
                ),
                TextFormField(
                  controller: cmpny,
                  decoration: const InputDecoration(
                    hintText: 'Where do you work?',
                    labelText: 'Company',
                  ),
                ),
                TextFormField(
                  controller: agein,
                  decoration: const InputDecoration(
                    hintText: 'Enter your age',
                    labelText: 'Age',
                  ),
                ),
                SizedBox(height: 50.0),
                GestureDetector(
                  onTap: () async {
                    add();
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
