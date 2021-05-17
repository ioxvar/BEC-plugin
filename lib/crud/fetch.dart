import 'package:flutter/material.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
import 'add.dart';
// ignore: unused_import
import 'package:becplugin/semesters/chosen.dart';

class FetchData extends StatefulWidget {
  @override
  _FetchDataState createState() => _FetchDataState();
}

class _FetchDataState extends State<FetchData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Fetch'),
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
              SizedBox(height: 80.0),
              GestureDetector(
                onTap: () async {
                  adder.collection("test").doc(docid.text).get().then((value) {
                    if (value != null) {
                      Navigator.of(context).push(Choice(10));
                      //Text(value.toString());
                    } else {
                      return "Data does not exist";
                    }
                  });
                },
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    return Container(
                        height: 40.0,
                        width: 150.0,
                        child: Material(
                            borderRadius: BorderRadius.circular(20.0),
                            shadowColor: Colors.teal[600],
                            color: Colors.teal[600],
                            elevation: 7.0,
                            child: Center(
                                child: Text('FETCH DATA',
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
    );
  }
}
