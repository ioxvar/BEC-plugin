import './authentication_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignInPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var logojpg = new AssetImage("assets/logo.jpg");
    var img = new Image(
      image: logojpg,
      width: 420,
      height: 180,
    );
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(4.0, 102.0, 0.0, 0.0),
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(2.0, 0.0, 0.0, 0.0),
                  child: img,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(65.0, 200.0, 0.0, 0.0),
                  child: Text('BEC\tFaculty',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.teal[600].withOpacity(1),
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold)),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(132.0, 250.0, 0.0, 0.0),
                  child: Text('Helper',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.teal[600].withOpacity(1),
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                        labelText: 'EMAIL',
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.teal[600]))),
                  ),
                  SizedBox(height: 20.0),
                  TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                        labelText: 'PASSWORD',
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green))),
                    obscureText: true,
                  ),
                  SizedBox(height: 5.0),
                  Container(
                    alignment: Alignment(1.0, 0.0),
                    padding: EdgeInsets.only(top: 15.0, left: 20.0),
                    child: InkWell(
                      child: Text(
                        'New User?',
                        style: TextStyle(
                            color: Colors.teal[600],
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ),
                ],
              )),
          ElevatedButton(
            onPressed: () {
              context.read<AuthenticationService>().signIn(
                    email: emailController.text.trim(),
                    password: passwordController.text.trim(),
                  );
            },
            child: Text(
              'Sign in',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat'),
            ),
          )
        ],
      ),
    );
  }
}
