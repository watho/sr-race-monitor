import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_race_monitor/event_model/bloc/incoming_race_message_bloc.dart';
import 'package:smart_race_monitor/service/i_smart_race_message_handler.dart';
import 'package:smart_race_monitor/service/injection.dart';
import 'package:smart_race_monitor/util/routing/router.dart';
import 'package:smart_race_monitor/util/simple_bloc_observer.dart';
import 'package:window_manager/window_manager.dart';

final getIt = GetIt.instance;

void main() async {
  Bloc.observer = SimpleBlocObserver();
  configureDependencies();
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();

  WindowOptions windowOptions =
      const WindowOptions(size: Size(800, 600), minimumSize: Size(400, 700)
          //center: true,
          //backgroundColor: Colors.transparent,
          //skipTaskbar: false,
          //titleBarStyle: TitleBarStyle.hidden,
          //windowButtonVisibility: false,
          );
  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });

  SmartRaceMessageHandler srmh = getIt<SmartRaceMessageHandler>();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        var incomingRaceMessageBloc = getIt<IncomingRaceMessageBloc>();
        getIt<SmartRaceMessageHandler>().startServer(8085, false);
        return incomingRaceMessageBloc;
      },
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
