import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: QuotePage(),
    ));

class QuotePage extends StatefulWidget {
  const QuotePage({Key? key}) : super(key: key);

  @override
  State<QuotePage> createState() => QuotePageState();
}

class Quote {
  String author = '';
  String text = '';

  Quote({String author: '', String text: ''}) {
    this.author = author;
    this.text = text;
  }
}

List<Quote> quotes = [
  Quote(author: 'Ashneer Grover', text: 'Kya kar raha hai bhai tu'),
  Quote(author: 'Vishesh', text: 'Hey'),
];

class QuotePageState extends State<QuotePage> {
  int year = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        elevation: 0,
      ),
      body: Column(
          children: quotes
              .map((quote) => Text('${quote.text} - ${quote.author}'))
              .toList()),
    );
  }
}
