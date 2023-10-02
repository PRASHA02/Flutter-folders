import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: hello(),
    ));

class hello extends StatelessWidget {
  const hello({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('my app'),
        backgroundColor: Colors.blue,
     ),
     body: Container(
      height: 300,
      width: 400,
      child: Text('data',
      style: TextStyle(
        fontSize: 20,
        color: Colors.blue
      ),),
     ),
    );
  }
}
