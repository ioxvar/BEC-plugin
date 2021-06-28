import 'package:becplugin/auth/authentication_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
import 'crud/newpages.dart';
import 'crud/profile.dart';

class SideBar extends StatefulWidget {
  const SideBar({Key key}) : super(key: key);

  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    var drawerHeader = UserAccountsDrawerHeader(
        decoration: BoxDecoration(
          color: Colors.teal[600],
        ),
        accountName: Text(profnameController.text),
        accountEmail: Text(mailController.text),
        currentAccountPicture: CircleAvatar(
          backgroundColor: Colors.white,
          child: Text('UN',
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal[600])),
        ));
    final drawerItems = ListView(
      children: <Widget>[
        Align(),
        drawerHeader,
        ListTile(
          leading: Icon(Icons.portrait_sharp),
          title: const Text('PROFILE'),
          onTap: () => Navigator.of(context).push(NewPage(5)),
        ),
        ListTile(
          leading: Icon(Icons.add_sharp),
          title: const Text('ADD'),
          onTap: () => Navigator.of(context).push(NewPage(1)),
        ),
        ListTile(
          leading: Icon(Icons.arrow_downward),
          title: const Text('FETCH'),
          onTap: () => Navigator.of(context).push(NewPage(2)),
        ),
        ListTile(
          leading: Icon(Icons.update_sharp),
          title: const Text('UPDATE'),
          onTap: () => Navigator.of(context).push(NewPage(3)),
        ),
        ListTile(
          leading: Icon(Icons.delete),
          title: const Text('DELETE'),
          onTap: () => Navigator.of(context).push(NewPage(4)),
        ),
        TextButton.icon(
          onPressed: () {
            context.read<AuthenticationService>().signOut();
          },
          icon: Icon(Icons.logout),
          label: Text('SIGN OUT'),
        ),
      ],
    );
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal[600],
          title: const Text('Home'),
        ),
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(),
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 150, 0, 0),
                    child: Text('Student Records',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.teal[600].withOpacity(1),
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(height: 80.0),
                  Container(
                    height: 40.0,
                    width: 300,
                    color: Colors.transparent,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              style: BorderStyle.solid,
                              width: 1.0),
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(20.0)),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(NewPage(1));
                        },
                        child: Center(
                          child: Text('ADD',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat')),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40.0),
                  Container(
                    height: 40.0,
                    width: 300,
                    color: Colors.transparent,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              style: BorderStyle.solid,
                              width: 1.0),
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(20.0)),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(NewPage(2));
                        },
                        child: Center(
                          child: Text('FETCH',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat')),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40.0),
                  Container(
                    height: 40.0,
                    width: 300,
                    color: Colors.transparent,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              style: BorderStyle.solid,
                              width: 1.0),
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(20.0)),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(NewPage(3));
                        },
                        child: Center(
                          child: Text('UPDATE',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat')),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40.0),
                  Container(
                    height: 40.0,
                    width: 300,
                    color: Colors.transparent,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              style: BorderStyle.solid,
                              width: 1.0),
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(20.0)),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(NewPage(4));
                        },
                        child: Center(
                          child: Text('DELETE',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat')),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () => Navigator.of(context).push(NewPage(1)),
            backgroundColor: Colors.teal[600],
            child: Icon(Icons.add)),
        drawer: Drawer(
          child: drawerItems,
        ));
  }
}
