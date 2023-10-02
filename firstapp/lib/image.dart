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
      body: Center(
        child: Image.asset('assets/a2.jpg'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child: Text('click'),
        backgroundColor: Colors.red,
      ),
    );
  }
}
