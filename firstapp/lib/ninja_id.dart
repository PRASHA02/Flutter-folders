import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: ninja_id(),
    ));

class ninja_id extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text('ninja id'),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20.0, 30.0, 40.0, 0.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'http://www.nasa.gov/sites/default/files/thumbnails/image/web_first_images_release.png'),
                  radius: 60.0,
                ),
              ),
              Divider(
                height: 90.0,
                color: Colors.black,
              ),
              Text(
                'NAME',
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Ninja',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.green,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.0),
              Text(
                'current level',
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '10',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.yellow,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.0),
              Row(
                children: [
                  Icon(Icons.email, color: Colors.amberAccent),
                  SizedBox(height: 30.0),
                  Text(
                    'ninja@gmail.com',
                    style: TextStyle(
                        fontSize: 10.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                        color: Colors.deepOrange),
                  ),
                ],
              )
            ]),
      ),
    );
  }
}
