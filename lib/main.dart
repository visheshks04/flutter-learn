import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: IDCard(),
    ));

class IDCard extends StatefulWidget {
  const IDCard({Key? key}) : super(key: key);

  @override
  State<IDCard> createState() => _IDCardState();
}

class _IDCardState extends State<IDCard> {
  int year = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1473773508845-188df298d2d1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80'),
                radius: 50,
              ),
            ),
            Text(
              'Name',
              style: TextStyle(color: Colors.grey, letterSpacing: 3),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              'Vishesh',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 3,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Year',
              style: TextStyle(color: Colors.grey, letterSpacing: 3),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              year.toString(),
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 3,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Branch',
              style: TextStyle(color: Colors.grey, letterSpacing: 3),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              'CSIT',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 3,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Hostel',
              style: TextStyle(color: Colors.grey, letterSpacing: 3),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              'Tagore',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 3,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Library ID',
              style: TextStyle(color: Colors.grey, letterSpacing: 3),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              '2024CSITXXXX',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 3,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {},
              child: Row(
                children: [
                  Icon(Icons.mail),
                  Text('vishesh.2024csitxxxx@kiet.edu')
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          setState(() {
            year++;
          })
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
    );
  }
}
