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
      body: Center(
        child: IconButton(
          onPressed: () {},
          icon: Icon(Icons.alternate_email),
          iconSize: 50,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('+'),
        backgroundColor: Colors.orange,
      ),
    );
  }
}
