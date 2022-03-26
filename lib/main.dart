import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Title comes here'),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Image.network(
          'https://images.unsplash.com/photo-1473773508845-188df298d2d1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80'),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('+'),
        backgroundColor: Colors.orange,
      ),
    );
  }
}
