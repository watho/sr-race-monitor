import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:smart_race_monitor/event_model/bloc/race_event_bloc.dart';

import 'package:smart_race_monitor/util/routing/router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_race_monitor/util/simple_bloc_observer.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RaceEventBloc(),
      child: MaterialApp.router(
        title: 'SR Race Monitor',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
          useMaterial3: true,
        ),
        routerConfig: _router,
      ),
    );
  }

  final GoRouter _router = GoRouter(
    routes: $appRoutes,
  );
}
