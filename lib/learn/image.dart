import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('my first app'),
          centerTitle: true,
          backgroundColor: Colors.red[600],
        ),
        body: Container(
          margin: EdgeInsets.all(15),
          //  alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/coast.jpg'),
              Image.network(
                  'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg'),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Text('click'),
          onPressed: () {},
          backgroundColor: Colors.pink[600],
        ),
      ),
    ));
