import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('App Title comes here'),
          centerTitle: true,
          backgroundColor: Colors.orange,
        ),
        body: Center(
          child: Text(
            'The body comes here',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              textBaseline: TextBaseline.ideographic,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Text('+'),
          backgroundColor: Colors.orange,
        ),
      ),
    ));
