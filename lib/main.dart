import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_race_monitor/event_model/bloc/incoming_race_message_bloc.dart';
import 'package:smart_race_monitor/service/i_smart_race_message_handler.dart';
import 'package:smart_race_monitor/service/injection.dart';
import 'package:smart_race_monitor/util/routing/router.dart';
import 'package:smart_race_monitor/util/simple_bloc_observer.dart';

final getIt = GetIt.instance;

void main() {
  Bloc.observer = SimpleBlocObserver();
  configureDependencies();
  SmartRaceMessageHandler srmh = getIt<SmartRaceMessageHandler>();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<IncomingRaceMessageBloc>(),
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
