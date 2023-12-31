
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloctrial/bloc/internetbloc/bloc/internet_bloc_event.dart';
import 'package:bloctrial/bloc/internetbloc/bloc/internet_bloc_state.dart';
import 'package:connectivity/connectivity.dart';

class InternetBloc extends Bloc<InternetEvent, InternetState>{
  Connectivity _connectivity = Connectivity();
  StreamSubscription ? connectivitySubscription;
      InternetBloc() :super(InternetInitialState())
      {
        on<InternetLostEvent>((event, emit) => emit(InternetLostState()));
        on<InternetGainedEvent>((event, emit) =>emit (InternetGainedState()));
        connectivitySubscription = _connectivity.onConnectivityChanged.listen((result) {
            if(result == ConnectivityResult.mobile || result == ConnectivityResult.wifi)
            {
              add(InternetGainedEvent());
            }
            else {
              add(InternetLostEvent());
            }
         });
         

      }
}