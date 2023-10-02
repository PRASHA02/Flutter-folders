import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rout/routes/router.gr.dart';

@RoutePage()
class stateB extends StatefulWidget {
  stateB({Key? key}) : super(key: key);

  @override
  State<stateB> createState() => _stateBState();
}

class _stateBState extends State<stateB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: ElevatedButton(onPressed: (){
          context.router.push(Screenc());
        }, child: Text('nect page c')),
      ),
    );
  }
}