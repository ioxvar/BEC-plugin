import 'package:flutter/material.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
import 'add.dart';

class DeleteData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Delete'),
        elevation: 1.0,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              TextField(
                controller: docid,
                decoration: const InputDecoration(
                  hintText: 'Enter USN whose data you want to delete',
                  labelText: 'USN',
                ),
              ),
              SizedBox(height: 80.0),
              GestureDetector(
                onTap: () async {
                  adder.collection("test").doc(docid.text).delete().then((_) {
                    print('deleted');
                  });
                  Navigator.of(context).pop();
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
                                child: Text('DELETE',
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
