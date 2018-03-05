import 'package:app/pages/home.page.dart';
import 'package:app/pages/login.page.dart';
import 'package:app/services/auth.service.dart';
import 'package:flutter/material.dart';

void main() async {
  // Create our auth service.
  AuthService _auth = new AuthService();

  // Set default home.
  Widget _defaultHome = new LoginPage();

  // Get result of the login function.
  bool _result = await _auth.login();
  if (_result) {
    _defaultHome = new HomePage();
  }

  runApp(new MaterialApp(
    title: 'App',
    home: _defaultHome,
    routes: <String, WidgetBuilder>{
      '/home': (BuildContext context) => new HomePage(),
      '/login': (BuildContext context) => new LoginPage()
    },
  ));
}