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
      body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text('hello world'),
            // RaisedButton(
            //   onPressed: () {},
            //   color: Colors.yellow,
            //   child: Text('click me'),
            // ),
            Container(
              padding: EdgeInsets.all(30.0),
              child: Text('inside container'),
              color: Colors.green,
            )
          ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child: Text('click'),
        backgroundColor: Colors.red,
      ),
    );
  }
}
