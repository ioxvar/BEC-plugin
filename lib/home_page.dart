import 'package:becplugin/auth/authentication_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
import 'crud/newpages.dart';
//import './sign_in_page.dart';

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
        accountName: Text('User Name'),
        accountEmail: Text('user.name@email.com'),
        currentAccountPicture: CircleAvatar(
          backgroundColor: Colors.white,
          child: Text('UN',
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.cyan[700])),
        ));
    final drawerItems = ListView(
      children: <Widget>[
        drawerHeader,
        ListTile(
          title: const Text('ADD'),
          onTap: () => Navigator.of(context).push(NewPage(1)),
        ),
        ListTile(
          title: const Text('FETCH'),
          onTap: () => Navigator.of(context).push(NewPage(2)),
        ),
        ListTile(
          title: const Text('UPDATE'),
          onTap: () => Navigator.of(context).push(NewPage(3)),
        ),
        ListTile(
          title: const Text('DELETE'),
          onTap: () => Navigator.of(context).push(NewPage(4)),
        ),
        ListTile(
          title: const Text('SIGN OUT'),
          onTap: () {
            context.read<AuthenticationService>().signOut();
          },
        )
      ],
    );
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text('Home'),
        ),
        body: Center(
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
        floatingActionButton: FloatingActionButton(
            onPressed: () => Navigator.of(context).push(NewPage(1)),
            backgroundColor: Colors.teal[600],
            child: Icon(Icons.add)),
        drawer: Drawer(
          child: drawerItems,
        ));
  }
}
