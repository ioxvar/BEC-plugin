import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import './add.dart';

class FetchData extends StatefulWidget {
  @override
  _FetchDataState createState() => _FetchDataState();
}

class _FetchDataState extends State<FetchData> {
  Map data;

  fetch() {
    CollectionReference collectionReference =
        FirebaseFirestore.instance.collection('test');
    collectionReference.snapshots().listen((snapshot) {
      List documents;
      setState(() {
        //data = snapshot.documents[0].test;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Fetch'),
        elevation: 1.0,
      ),
      body: Center(
        child: Text('FETCH FROM HERE'),
      ),
    );
  }
}
