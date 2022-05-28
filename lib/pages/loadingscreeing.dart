import 'package:flutter/material.dart';
import 'package:test_app/pages/home.dart';
import 'package:test_app/pages/choose_location.dart';
import 'package:test_app/pages/loadingscreeing.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('loading screen'),
    );
  }
}
