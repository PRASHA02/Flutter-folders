import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: ninja_id(),
    ));

class ninja_id extends StatefulWidget {
  @override
  State<ninja_id> createState() => _ninja_idState();
}

class _ninja_idState extends State<ninja_id> {
  int ninjalevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text(
          'ninja id',
          style: TextStyle(color: Colors.blue),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          setState(() {
            ninjalevel += 1;
          }),
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20.0, 30.0, 40.0, 0.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://c4.wallpaperflare.com/wallpaper/889/998/364/anime-one-piece-monkey-d-luffy-portgas-d-ace-wallpaper-preview.jpg'),
                    radius: 60.0,
                    child: Text('luffy'),
                  ),
                  radius: 80,
                  backgroundImage: NetworkImage(
                      'https://img.freepik.com/premium-vector/space-background-with-abstract-shape-stars_189033-30.jpg?w=2000'),
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
                'current level;',
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '$ninjalevel',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.yellow,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.alternate_email, color: Colors.amberAccent),
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
