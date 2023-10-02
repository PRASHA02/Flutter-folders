import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rout/routes/router.gr.dart';

@RoutePage()
class screenc extends StatefulWidget {
  screenc({Key? key}) : super(key: key);

  @override
  State<screenc> createState() => _screencState();
}

class _screencState extends State<screenc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: ElevatedButton(onPressed: (){
          context.router.push(RouteA());
        }, child: Text('next page A')),
      ),
    );
  }
}