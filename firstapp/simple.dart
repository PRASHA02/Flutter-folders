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
          children: quotes
              .map((quote) => Text('${quote.text}-${quote.author}'))
              .toList(),
        ));
  }
}
