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
      body: Row(
        children: [
          Text('Hello bro!'),
          TextButton(child: Text('new button'), onPressed: () {}),
          Container(
            color: Colors.red,
            child: Text('This is a container'),
            padding: EdgeInsets.all(20.0),
          )
        ],
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('+'),
        backgroundColor: Colors.orange,
      ),
    );
  }
}
