import 'package:flutter/material.dart';
import 'package:firstapp/quote.dart';

void main() => runApp(MaterialApp(
      home: prash(),
    ));

class prash extends StatefulWidget {
  @override
  State<prash> createState() => _prashState();
}

class _prashState extends State<prash> {
  List<quote> quotes = [
    quote(text: 'i can do my work', author: 'prash'),
    quote(text: 'i can do my job', author: 'prash'),
    quote(text: 'i can do my excercise', author: 'prash'),
  ];
  Widget quoteTemplates(quote) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Text(quote.text,
              style: TextStyle(fontSize: 10.0, color: Colors.blue)),
          SizedBox(height: 10.0),
          Text(quote.author,
              style: TextStyle(fontSize: 10.0, color: Colors.blue)),
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('sample'),
            centerTitle: true,
            backgroundColor: Colors.amber[800]),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {},
          child: Text(
            'click',
          ),
          backgroundColor: Colors.blue,
        ),
        body: Row(
          children: quotes.map((quote) => quoteTemplates(quote)).toList(),
        ));
  }
}
