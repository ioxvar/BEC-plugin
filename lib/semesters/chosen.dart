import 'package:flutter/material.dart';

import './sem1.dart';
import './sem2.dart';
import './sem3.dart';
import './sem4.dart';
import './sem5.dart';
import './sem6.dart';
import './sem7.dart';
import './sem8.dart';
import './semupdate.dart';
import './datafetch.dart';

class Choice extends MaterialPageRoute<void> {
  Choice(int id)
      : super(
          builder: (BuildContext context) {
            switch (id) {
              case 1:
                return Sem1();
                break;

              case 2:
                return Sem2();
                break;

              case 3:
                return Sem3();
                break;

              case 4:
                return Sem4();
                break;
              case 5:
                return Sem5();
                break;

              case 6:
                return Sem6();
                break;

              case 7:
                return Sem7();
                break;

              case 8:
                return Sem8();
                break;
              case 9:
                return SemUpdate();
                break;

              case 10:
                return Fetch();
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
          },
        );
}
