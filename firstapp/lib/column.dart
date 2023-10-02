import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() =>
    runApp(DevicePreview(enabled: true, builder: ((context) => Home())));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my first app'),
        centerTitle: true,
        backgroundColor: Colors.blue[300],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20.0),
            child: Text('one'),
            color: Colors.green,
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: Text('two'),
            color: Colors.pink,
          ),
          Container(
            padding: EdgeInsets.all(30.0),
            child: Text('three'),
            color: Colors.red,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child: Text('click'),
        backgroundColor: Colors.red,
      ),
    );
  }
}
