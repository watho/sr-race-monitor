import 'package:flutter_test/flutter_test.dart';
import 'package:logger/logger.dart';
import 'package:shelf_plus/shelf_plus.dart' as shelf_plus;

void main() {
  var log = Logger(printer: PrettyPrinter());
  group('Test Shelf Server', () {
    test('Test start and stop', () async {
      var context1 = await shelf_plus.shelfRun(
        init,
        defaultBindAddress: '0.0.0.0',
        defaultBindPort: 8085,
        defaultEnableHotReload: false,
      );
      await context1.close().whenComplete(() => log.d("context 1 closed"));
      //await Future.delayed(const Duration(seconds: 5));
      var context2 = await shelf_plus.shelfRun(
        init,
        defaultBindAddress: '0.0.0.0',
        defaultBindPort: 8085,
        defaultEnableHotReload: false,
      );
      await context2.close().whenComplete(() => log.d("context 2 closed"));
    });
  });
}

shelf_plus.Handler init() {
  var app = shelf_plus.Router().plus;
  // postReceiver.use(shelf_plus.logRequests(
  //     logger: (msg, isError) => isError ? log.e(msg) : log.d(msg)));
  // postReceiver.use(corsHeaders());
  //postReceiver.post('/', (request) => '"${request.method}" at "${request.url}" with length "${request.contentLength}" ');
  app.get('/<ignored|.*>', (request) => 'Congratulation! This works.');
  return app.call;
}
