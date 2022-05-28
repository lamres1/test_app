import 'package:flutter/material.dart';
import 'package:test_app/weather/page1.dart';
import 'package:test_app/weather/page2.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyLogin(),
    routes: {
      'register': (context) => MyRegister(),
      'login': (context) => MyLogin(),
    },
  ));
}
