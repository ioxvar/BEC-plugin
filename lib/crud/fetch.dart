import 'package:flutter/material.dart';

class FetchData extends StatelessWidget {
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
