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

class QuoteCard extends StatelessWidget {
  Quote quote;
  Function() delete;

  QuoteCard({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Column(children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(fontSize: 14, color: Colors.grey[600]),
            ),
            SizedBox(height: 6),
            Text(
              quote.author,
              style: TextStyle(fontSize: 10, color: Colors.grey[800]),
            ),
            SizedBox(
              height: 8,
            ),
            TextButton(
              onPressed: delete,
              child: Icon(Icons.delete),
            )
          ]),
        ),
      ),
    );
  }
}

class QuotePageState extends State<QuotePage> {
  int year = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('Quotes'),
          backgroundColor: Colors.redAccent,
          centerTitle: true,
          elevation: 0,
        ),
        body: Column(
          children: quotes
              .map((quote) => QuoteCard(
                  quote: quote,
                  delete: () {
                    setState(() {
                      quotes.remove(quote);
                    });
                  }))
              .toList(),
        ));
  }
}
