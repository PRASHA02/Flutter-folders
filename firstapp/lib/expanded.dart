import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my first app'),
        centerTitle: true,
        backgroundColor: Colors.blue[300],
      ),
      body: Row(children: <Widget>[
        Image.network(''),
        Expanded(
          flex: 3,
          child: Container(
            padding: EdgeInsets.all(30.0),
            child: Text('1'),
            color: Colors.red,
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            padding: EdgeInsets.all(30.0),
            child: Text('2'),
            color: Colors.green,
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            padding: EdgeInsets.all(30.0),
            child: Text('3'),
            color: Colors.blue,
          ),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child: Text('click'),
        backgroundColor: Colors.red,
      ),
    );
  }
}
