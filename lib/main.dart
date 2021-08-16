import 'package:flutter/material.dart';
import './pages/loading.dart';
import './pages/home.dart';
import './pages/login.dart';
import './pages/start.dart';

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
      '/': (context) => Loading(),
      '/home': (context) => Home(),
    },
  ));
}