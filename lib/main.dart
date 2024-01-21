import 'package:flutter/material.dart';
import 'package:shelf_plus/shelf_plus.dart' as shelf_plus;
import 'package:shelf_cors_headers/shelf_cors_headers.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_race_monitor/event_model/race_event.dart';
import 'package:smart_race_monitor/util/routing/router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  var receiver_app = shelf_plus.shelfRun(init, defaultBindAddress: '0.0.0.0', defaultBindPort: 8085, defaultEnableHotReload: false);
  runApp(MyApp());
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
  postReceiver.get('/<ignored|.*>', (request) => 'Congratulation! This works and you can enter this url in the smartrace-app settings.');

  /// Receive RaceEvent
  postReceiver.post('/<ignored|.*>', (shelf_plus.Request request) async {
    //var newPerson = await request.body.as(Person.fromJson);
    //var body = await request.body.as(RaceEvent.fromJson);
    Map<String, dynamic> body = await request.body.asJson;
    if (body.containsKey("event_type")) {
      print("Yeah");
      // TODO Switch-case event_type and create TypeObjects.
    }
    return body;
  });
  return postReceiver;
}

class MyApp extends StatelessWidget {
  MyApp({super.key});



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'SR Race Monitor',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      routerConfig: _router,
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

// Response _echoRequest(Request request) {
//
//   return Response.ok('"${request.method}" at "${request.url}" with length "${request.contentLength}" ');
// }

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
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

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
