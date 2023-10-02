import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rout/routes/router.dart';
import 'package:rout/routes/router.gr.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
   final _appRouter = AppRouter();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
    );
  }
}

@RoutePage()
class ScreenA extends StatefulWidget {
  ScreenA({Key? key}) : super(key: key);

  @override
  State<ScreenA> createState() => _ScreenAState();
}

class _ScreenAState extends State<ScreenA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: ElevatedButton(onPressed: (){
            AutoRouter.of(context).push(StateB());
        }, child: Text('NextPage B')),
      ),
    );
  }
}


