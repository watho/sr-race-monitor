import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shelf_cors_headers/shelf_cors_headers.dart';
import 'package:shelf_plus/shelf_plus.dart' as shelf_plus;
import 'package:smart_race_monitor/event_model/event_change_status.dart';
import 'package:smart_race_monitor/event_model/race_event.dart';

part 'race_event_bloc_event.dart';
part 'race_event_bloc_state.dart';

class RaceEventBloc extends Bloc<RaceEventBlocEvent, RaceEventBlocState> {
  RaceStatus _oldState = RaceStatus.unknown;
  RaceStatus _newState = RaceStatus.unknown;

  RaceEventBloc() : super(const RaceEventInitial(RaceEventType.unknown)) {
    var postReceiver = shelf_plus.shelfRun(init,
        defaultBindAddress: '0.0.0.0',
        defaultBindPort: 8085,
        defaultEnableHotReload: false);

    on<RaceStarted>(_onRaceStarted);
    on<RaceEnded>(_onRaceEnded);
    on<UiLapUpdated>(_onUiLapUpdated);
    on<RaceStatusChanged>(_onEventChangeStatus);
  }

  void _onRaceStarted(RaceStarted event, Emitter<RaceEventBlocState> emit) {
    emit(const RaceEventEventStart(RaceEventType.eventStart));
  }

  void _onRaceEnded(RaceEnded event, Emitter<RaceEventBlocState> emit) {
    emit(const RaceEventEventEnd(RaceEventType.eventEnd));
  }

  void _onUiLapUpdated(UiLapUpdated event, Emitter<RaceEventBlocState> emit) {
    emit(const RaceEventUiLapUpdate(RaceEventType.uiLapUpdate));
  }

  void _onEventChangeStatus(
      RaceStatusChanged event, Emitter<RaceEventBlocState> emit) {
    emit(RaceEventEventChangeStatus(
        RaceEventType.eventChangeStatus, event.oldState, event.newState));
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
          EventChangeStatus ecs =
              EventChangeStatus.fromJson(raceEvent.eventData);
          var oldState = RaceStatus.values.byName(ecs.oldState);
          var newState = RaceStatus.values.byName(ecs.newState);

          add(RaceStatusChanged(oldState: oldState, newState: newState));
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
}
