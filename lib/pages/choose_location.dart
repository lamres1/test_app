import 'package:flutter/material.dart';

class chooselocation extends StatefulWidget {
  const chooselocation({Key? key}) : super(key: key);

  @override
  State<chooselocation> createState() => _chooselocationState();
}

class _chooselocationState extends State<chooselocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('choose location screen '),
    );
  }
}
