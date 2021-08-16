import 'package:flutter/material.dart';
import './pages/loading.dart';
import './pages/home.dart';
import './pages/login.dart';
import './pages/start.dart';
import './pages/register.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      fontFamily: 'Oswald',
    ),
    debugShowCheckedModeBanner: false,
    initialRoute: '/start',
    routes: {
      '/start': (context) => Start(),
      '/login': (context) => Login(),
      '/register': (context) => Register(),
      '/': (context) => Loading(),
      '/home': (context) => Home(),
    },
  ));
}