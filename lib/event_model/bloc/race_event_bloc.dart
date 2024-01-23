import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:shelf_cors_headers/shelf_cors_headers.dart';
import 'package:shelf_plus/shelf_plus.dart' as shelf_plus;
import 'package:smart_race_monitor/event_model/event_change_status.dart';
import 'package:smart_race_monitor/event_model/race_event.dart';
import 'package:smart_race_monitor/event_model/ui_lap_update.dart';
import 'package:smart_race_monitor/util/color_util.dart';

part 'race_event_bloc_event.dart';
part 'race_event_bloc_state.dart';

class RaceEventBloc extends Bloc<RaceEventBlocEvent, RaceEventBlocState> {
  var log = Logger(printer: PrettyPrinter(methodCount: 1));
  late Future<shelf_plus.ShelfRunContext> postReceiver;

  RaceEventBloc() : super(const RaceEventInitial()) {
    postReceiver = shelf_plus.shelfRun(init,
        defaultBindAddress: '0.0.0.0',
        defaultBindPort: 8085,
        defaultEnableHotReload: false);

    on<RaceStarted>(_onRaceStarted);
    on<RaceEnded>(_onRaceEnded);
    on<UiLapUpdated>(_onUiLapUpdated);
    on<RaceStatusChanged>(_onEventChangeStatus);
  }

  void _onRaceStarted(RaceStarted event, Emitter<RaceEventBlocState> emit) {
    emit(const RaceEventEventStart());
  }

  void _onRaceEnded(RaceEnded event, Emitter<RaceEventBlocState> emit) {
    emit(const RaceEventEventEnd());
  }

  void _onUiLapUpdated(UiLapUpdated event, Emitter<RaceEventBlocState> emit) {
    emit(const RaceEventUiLapUpdate());
  }

  void _onEventChangeStatus(
      RaceStatusChanged event, Emitter<RaceEventBlocState> emit) {
    emit(RaceEventEventChangeStatus(event.oldState, event.newState));
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
          EventChangeStatus ecs =
              EventChangeStatus.fromJson(raceEvent.eventData);
          var oldState = RaceStatus.values.byName(ecs.oldState);
          var newState = RaceStatus.values.byName(ecs.newState);

          add(RaceStatusChanged(timestamp,
              oldState: oldState, newState: newState));
          break;
        case 'ui.lap_update':
          UiLapUpdate ulu = UiLapUpdate.fromJson(raceEvent.eventData);
          add(UiLapUpdated(timestamp,
              controllerColor: hexOrRGBToColor(ulu.controllerData.colorBg),
              laptime: ulu.laptime));
          break;
        case _:
          log.e("Unknown event type received: ${raceEvent.eventType}");
      }
      return raceEvent.toJson();
    });
    return postReceiver.call;
  }

  @override
  Future<void> close() {
    return super.close();
  }
}
