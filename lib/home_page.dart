//import './authentication_service.dart';
import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';
/*
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("HOME"),
            ElevatedButton(
              onPressed: () {
                context.read<AuthenticationService>().signOut();
              },
              child: Text("Sign out"),
            ),
          ],
        ),
      ),
    );
  }
}
*/

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
          title: const Text('Field 1'),
          onTap: () => Navigator.of(context).push(_NewPage(1)),
        ),
        ListTile(
          title: const Text('Field 2'),
          onTap: () => Navigator.of(context).push(_NewPage(2)),
        ),
        ListTile(
          title: const Text('Field 3'),
          onTap: () => Navigator.of(context).push(_NewPage(3)),
        ),
      ],
    );
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text('Home'),
        ),
        body: const Center(
          child: Text('Top left icon to display drawer'),
        ),
        drawer: Drawer(
          child: drawerItems,
        ));
  }
}

// <void> means this route returns nothing.
class _NewPage extends MaterialPageRoute<void> {
  _NewPage(int id)
      : super(builder: (BuildContext context) {
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
        });
}
