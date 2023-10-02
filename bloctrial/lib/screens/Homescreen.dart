
import 'package:bloctrial/bloc/cubits/internet_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Homescreen extends StatefulWidget {
  Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow,
        body: SafeArea(
            child: Center(
          //       child: BlocBuilder<InternetBloc, InternetState>(
          //   builder: (context, state) {
          //     if(state is InternetGainedState) {
          //       return  Text("Connected");
          //     } else if(state is InternetLossState)
          //      // ignore: curly_braces_in_flow_control_structures
          //      return   Text("Not Connected");
          //     else{
          //       return  Text("Loading...");
          //     }
          //   },
          // )
          child: BlocConsumer<InternetCubit,InternetState>(
            listener: (context, state) {
              if(state == InternetState.Gained)
               {
                ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Internet Gained state"),
                      backgroundColor: Colors.green,)
                );
               }
              else
               {
                ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Internet Lost state"),
                      backgroundColor: Colors.red,)
                );
               }
               
            },
            builder: (context, state) {
               if(state == InternetState.Gained)
                return Text("Gained!");
               else if(state == InternetState.Lost)
                return Text("Lost!");
              else
               return Text("Loading");
            },
          ),
        )));
  }
}
