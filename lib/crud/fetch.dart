import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final CollectionReference users = FirebaseFirestore.instance.collection('test');
Stream collectionStream =
    FirebaseFirestore.instance.collection('test').snapshots();
//Stream documentStream = FirebaseFirestore.instance.collection('users').doc('ABC123').snapshots();

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
          child: Column(
            children: <Widget>[
              SizedBox(height: 80.0),
              GestureDetector(
                onTap: () async {
                  users.get().then((querySnapshot) {
                    querySnapshot.docs.forEach((result) {
                      print(result.data());
                    });
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
