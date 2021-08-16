import 'package:flutter/material.dart';
import './pages/loading.dart';
import './pages/home.dart';
import './pages/login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/home',
    routes: {
      '/login': (context) => Login(),
      '/': (context) => Loading(),
      '/home': (context) => Home(),
    },
  ));
}