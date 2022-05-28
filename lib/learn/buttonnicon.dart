import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('my first app'),
          centerTitle: true,
          backgroundColor: Colors.red[600],
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.apartment_outlined,
                color: Colors.lightGreen,
                size: 50.0,
              ),
              RaisedButton.icon(
                onPressed: () {
                  print('you clicked me');
                },
                icon: Icon(
                  Icons.mail_lock,
                  color: Color.fromARGB(255, 95, 148, 30),
                  size: 50.0,
                ),
                label: Text('mail me'),
              ),
            ],
          ),
        ),
      ),
    ));
