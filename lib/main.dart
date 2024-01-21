import 'package:flutter/material.dart';
import 'package:shelf_plus/shelf_plus.dart' as shelf_plus;
import 'package:shelf_cors_headers/shelf_cors_headers.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_race_monitor/event_model/bloc/race_event_bloc.dart';
import 'package:smart_race_monitor/event_model/event_change_status.dart';
import 'package:smart_race_monitor/event_model/race_event.dart';
import 'package:smart_race_monitor/util/routing/router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

RaceEventBloc raceEventBloc = RaceEventBloc();

void main()  {
  Bloc.observer = SimpleBlocObserver();

  var postReceiver = shelf_plus.shelfRun(init,
      defaultBindAddress: '0.0.0.0',
      defaultBindPort: 8085,
      defaultEnableHotReload: false);

  runApp(MyApp(raceEventBloc: RaceEventBloc()));
}

shelf_plus.Handler init() {
  //var handler =
  //    const Pipeline().addMiddleware(logRequests()).addHandler(_echoRequest);

  //var server = await shelf_io.serve(handler, '0.0.0.0', 8085);

  // Enable content compression
  //server.autoCompress = true;

  //print('Starting receiving endpoint at http://${server.address.host}:${server.port}');

  var postReceiver = shelf_plus.Router().plus;
  postReceiver.use(shelf_plus.logRequests());
  postReceiver.use(corsHeaders());
  //postReceiver.post('/', (request) => '"${request.method}" at "${request.url}" with length "${request.contentLength}" ');
  postReceiver.get(
      '/<ignored|.*>',
      (request) =>
          'Congratulation! This works and you can enter this url in the smartrace-app settings.');
  /// Receive RaceEvent
  postReceiver.post('/<ignored|.*>', (shelf_plus.Request request) async {
    //var newPerson = await request.body.as(Person.fromJson);
    //var body = await request.body.as(RaceEvent.fromJson);
    RaceEvent raceEvent = await request.body.as(RaceEvent.fromJson);
    print(raceEvent);
    // if (body.containsKey("event_type")) {
    //   var eventType = body['event_type'].toString();
    //   print(eventType);
    //   if (eventType == 'event.change_status') {
    //     print("We have a event.");
    //   }
      switch (raceEvent.eventType) {
        case 'event.change_status':
          EventChangeStatus ecs = EventChangeStatus.fromJson(raceEvent.eventData);
          var oldState = RaceStatus.values.byName(ecs.oldState);
          var newState = RaceStatus.values.byName(ecs.newState);
          raceEventBloc.add( RaceStatusChanged(oldState: oldState, newState: newState));
        break;
      }
    //   print("Yeah");
    //   // TODO Switch-case event_type and create TypeObjects.
    // }
    //return raceEvent.toJson();
    return raceEvent.toJson();
  });
  return postReceiver;
}

class MyApp extends StatelessWidget {
  MyApp({super.key, required this.raceEventBloc});
  final RaceEventBloc raceEventBloc;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => raceEventBloc,
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
    redirect: (context, state) {
      // FIXME disabled for dev if (!signedIn) return SignInRoute().location;
      return null;
    },
  );
}

class SimpleBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    print(event);
    super.onEvent(bloc, event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print(transition);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print(change);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    print(error);
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    print("Bloc created: $bloc");
  }
}
