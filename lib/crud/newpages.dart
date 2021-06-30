//import 'package:becplugin/flutterfire.dart';
import 'package:becplugin/crud/add.dart';
import 'package:becplugin/crud/delete.dart';
import 'package:becplugin/crud/update_data.dart';
import 'package:flutter/material.dart';
import './profile.dart';
//import 'package:provider/provider.dart';

//import '../flutterfire.dart';
import 'fetch.dart';

class NewPage extends MaterialPageRoute<void> {
  NewPage(int id)
      : super(builder: (BuildContext context) {
          switch (id) {
            case 1:
              return AddData();
              break;

            case 2:
              return FetchData();
              break;

            case 3:
              return Update();
              break;

            case 4:
              return DeleteData();
              break;

            case 5:
              return ProfilePage();
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
        },);
}