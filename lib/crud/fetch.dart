import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'add.dart';

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
                      print(value.data());
                    }
                    /*
                    Implement when/if subcollection mapping is figured out
                    if (adder
                            .collection("test")
                            .doc(semester.text)
                            .collection("semester")
                            .doc(semester.text) !=
                        null) {
                      print("EXISTS");
                    }*/
                    else {
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
