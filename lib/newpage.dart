import 'package:becplugin/flutterfire.dart';
import 'package:flutter/material.dart';
import './flutterfire.dart';
import 'package:provider/provider.dart';

final TextEditingController name = TextEditingController();
final TextEditingController cmpny = TextEditingController();
final TextEditingController agein = TextEditingController();

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
                  child: Container(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            controller: name,
                            decoration: const InputDecoration(
                              // icon: Icon(Icons.person),
                              hintText: 'What do people call you?',
                              labelText: 'Name',
                            ),
                            // onSaved: (String value) {

                            //   },
                            // validator: (String value) {
                            //   return (value != null && value.contains('@'))
                            //       ? 'Do not use the @ char.'
                            //       : null;
                            // },
                          ),
                          TextFormField(
                            controller: cmpny,
                            decoration: const InputDecoration(
                              //icon: Icon(Icons.person),
                              hintText: 'Where do you work?',
                              labelText: 'Company',
                            ),
                          ),
                          TextFormField(
                            controller: agein,
                            decoration: const InputDecoration(
                              //icon: Icon(Icons.person),
                              hintText: 'Enter agein',
                              labelText: 'Age',
                            ),
                          ),
                          SizedBox(height: 50.0),
                          GestureDetector(
                            /*  onTap: () {
                          context.read<AddUser>().addUser(
                              fullName: name.text.trim(),
                              company: cmpny.text.trim(),
                              aget: agein.value);
                        },*/
                            child: LayoutBuilder(
                              builder: (BuildContext context,
                                  BoxConstraints constraints) {
                                return Container(
                                    height: 40.0,
                                    width: 120.0,
                                    child: Material(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                        shadowColor: Colors.teal[600],
                                        color: Colors.teal[600],
                                        elevation: 7.0,
                                        child: Center(
                                            child: Text('ADD DATA',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily:
                                                        'Montserrat')))));
                              },
                            ),
                          ),
                        ],
                      )),
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
