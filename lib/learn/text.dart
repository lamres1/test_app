import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('my first app1'),
          centerTitle: true,
          backgroundColor: Colors.red[600],
        ),
        body: Center(
          child: Text(
            'nicely done',
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
                fontFamily: 'Kumarone',
                color: Colors.green[600]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Text('click'),
          onPressed: () {},
          backgroundColor: Colors.pink[600],
        ),
      ),
    ));
