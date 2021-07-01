import 'package:becplugin/auth/authentication_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'crud/newpages.dart';
// import 'crud/profile.dart';

class SideBar extends StatefulWidget {
  const SideBar({Key key}) : super(key: key);

  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    var logojpg = new AssetImage("assets/logobec.png");
    var img = new Image(
      image: logojpg,
      width: 50,
    );

    var drawerHeader = UserAccountsDrawerHeader(
      decoration: BoxDecoration(
        color: Colors.teal[600],
      ),
      accountName: Text(
        'BEC User',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
      ),
      accountEmail: Text(
        'becuser@becbgk.edu',
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
      ),
      currentAccountPicture: CircleAvatar(
        backgroundColor: Colors.white,
        child: Container(
          child: img,
        ),
      ),
    );
    // var drawerHeader = UserAccountsDrawerHeader(
    //   decoration: BoxDecoration(
    //     color: Colors.teal[600],
    //   ),
    // accountName: Text(
    //     'BEC User',
    //     style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
    //   ),
    //   accountEmail: Text(
    //     'becuser@becbgk.edu',
    //     style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
    //   ),  currentAccountPicture: CircleAvatar(
    //     backgroundColor: Colors.white,
    //     child: Container(
    //       child: img,
    //     ),
    //   ),
    // );

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
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.portrait_sharp),
                onPressed: () {
                  Navigator.of(context).push(NewPage(5));
                }),
          ],
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

final TextEditingController profnameController = TextEditingController();
final TextEditingController deptController = TextEditingController();
final TextEditingController mailController = TextEditingController();
String mailid, professor, dept;

class ProfilePage extends StatefulWidget {
  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Stack(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                      child: Text(
                        'Edit Profile',
                        style: TextStyle(
                            color: Colors.teal[600].withOpacity(1),
                            fontSize: 60.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(260.0, 125.0, 0.0, 0.0),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                child: Column(
                  children: <Widget>[
                    TextField(
                      controller: profnameController,
                      decoration: InputDecoration(
                          hintText: 'Enter your name',
                          hintStyle: TextStyle(color: Colors.grey[400]),
                          labelText: 'Name',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.teal[600]))),
                    ),
                    SizedBox(height: 10.0),
                    TextField(
                      controller: deptController,
                      decoration: InputDecoration(
                          hintText: 'Enter your Department',
                          hintStyle: TextStyle(color: Colors.grey[400]),
                          labelText: 'Department',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.teal[600]))),
                    ),
                    SizedBox(height: 10.0),
                    TextField(
                      controller: mailController,
                      decoration: InputDecoration(
                          hintText: 'Enter your email',
                          hintStyle: TextStyle(color: Colors.grey[400]),
                          labelText: 'Email',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green))),
                    ),
                    SizedBox(height: 50.0),
                    Container(
                      height: 40.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        shadowColor: Colors.teal.shade600,
                        color: Colors.teal[600],
                        elevation: 7.0,
                        child: GestureDetector(
                          onTap: () {
                            mailid = mailController.text;
                            professor = profnameController.text;
                            dept = deptController.text;
                            Navigator.of(context).pop();
                          },
                          child: Center(
                            child: Text(
                              'SAVE',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      height: 40.0,
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
                            Navigator.of(context).pop();
                          },
                          child: Center(
                            child: Text('Go Back',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat')),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
