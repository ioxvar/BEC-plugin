import 'package:flutter/material.dart';

class NewPage extends MaterialPageRoute<void> {
  NewPage(int id)
      : super(builder: (BuildContext context) {
          switch (id) {
            case 1:
              return Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.teal,
                  title: Text('Add'),
                  elevation: 1.0,
                ),
                body: Center(
                  child: Text('ADD DATA HERE'),
                ),
              );

              break;

            case 2:
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

              break;

            case 3:
              return Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.teal,
                  title: Text('Update'),
                  elevation: 1.0,
                ),
                body: Center(
                  child: Text('UPDATE DATA HERE'),
                ),
              );

              break;

            case 2:
              return Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.teal,
                  title: Text('Delete'),
                  elevation: 1.0,
                ),
                body: Center(
                  child: Text('DELETE DATA HERE'),
                ),
              );

              break;

            default:
              return Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.teal,
                  title: Text('Field $id'),
                  elevation: 1.0,
                ),
                body: Center(
                  child: Text('Field $id'),
                ),
              );
          }
        });
}
