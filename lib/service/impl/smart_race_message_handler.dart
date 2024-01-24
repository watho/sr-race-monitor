import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:shelf_cors_headers/shelf_cors_headers.dart';
import 'package:shelf_plus/shelf_plus.dart' as shelf_plus;
import 'package:smart_race_monitor/event_model/bloc/incoming_race_message_bloc.dart';
import 'package:smart_race_monitor/event_model/event_change_status.dart';
import 'package:smart_race_monitor/event_model/race_event.dart';
import 'package:smart_race_monitor/service/i_smart_race_message_handler.dart';

import '../../event_model/ui_lap_update.dart';

final getIt = GetIt.instance;

@Singleton(as: SmartRaceMessageHandler)
class SmartRaceMessageHandlerImpl implements SmartRaceMessageHandler {
  var log = Logger(printer: PrettyPrinter(methodCount: 1));
  late IncomingRaceMessageBloc bloc;

  SmartRaceMessageHandlerImpl({IncomingRaceMessageBloc? bloc}) : super() {
    this.bloc = bloc ?? getIt.get<IncomingRaceMessageBloc>();
    log.i("Starting post receiver on 8085");
    shelf_plus.shelfRun(init,
        defaultBindAddress: '0.0.0.0',
        defaultBindPort: 8085,
        defaultEnableHotReload: false);
  }

  shelf_plus.Handler init() {
    var postReceiver = shelf_plus.Router().plus;
    postReceiver.use(shelf_plus.logRequests(
        logger: (msg, isError) => isError ? log.e(msg) : log.d(msg)));
    postReceiver.use(corsHeaders());
    //postReceiver.post('/', (request) => '"${request.method}" at "${request.url}" with length "${request.contentLength}" ');
    postReceiver.get(
        '/<ignored|.*>',
        (request) =>
            'Congratulation! This works and you can enter this url in the smartrace-app settings.');

    /// Receive RaceEvent
    postReceiver.post('/<ignored|.*>', (shelf_plus.Request request) async {
      RaceEvent raceEvent = await request.body.as(RaceEvent.fromJson);
      log.d("Post request received: ${raceEvent.toJson()}.");
      DateTime timestamp =
          DateTime.fromMillisecondsSinceEpoch((raceEvent.time / 1000).floor());
      switch (raceEvent.eventType) {
        case 'event.change_status':
          bloc.add(RaceMsgEventStatusChanged(
              timestamp, EventChangeStatus.fromJson(raceEvent.eventData)));
          break;
        case 'ui.lap_update':
          bloc.add(IncomingRaceMessageEvent.uiLapUpdated(
              timestamp, UiLapUpdate.fromJson(raceEvent.eventData)));
          break;
        case _:
          log.e("Unknown event type received: ${raceEvent.eventType}");
      }
      return raceEvent.toJson();
    });
    return postReceiver.call;
  }
}
