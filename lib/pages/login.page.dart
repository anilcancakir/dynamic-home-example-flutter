import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => new Scaffold(
    appBar: new AppBar(
      title: new Text('Login'),
    ),
    body: new Container(
      child: new Center(
        child: new RaisedButton(
          child: new Text(
            'Login for App'
          ),
          onPressed: () {
            Navigator.of(context).pushReplacementNamed('/home');
          }
        ),
      ),
    ),
  );
}