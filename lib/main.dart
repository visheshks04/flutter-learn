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
        child: ElevatedButton.icon(
          onPressed: () {
            print('Button was clicked!');
          },
          icon: Icon(Icons.mail),
          label: Text('Mail'),
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
