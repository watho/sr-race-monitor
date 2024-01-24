import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:smart_race_monitor/event_model/ui_lap_update.dart';
import 'package:smart_race_monitor/model/driver_model.dart';
import 'package:smart_race_monitor/util/color_util.dart';

import '../event_change_status.dart';

part 'incoming_race_message_bloc.freezed.dart';
part 'incoming_race_message_event.dart';
part 'incoming_race_message_state.dart';

enum RaceStatus {
  unknown,
  prepare_for_start,
  starting,
  jumpstart,
  running,
  suspended,
  restarting,
  ended,
}

enum RaceEventType {
  unknown,
  uiLapUpdate,
  eventChangeStatus,
  eventStart,
  eventEnd
}

@Singleton()
class IncomingRaceMessageBloc
    extends Bloc<IncomingRaceMessageEvent, IncomingRaceMessageState> {
  var log = Logger(printer: PrettyPrinter(methodCount: 1));
  Map<int, Driver> driversList = {};

  IncomingRaceMessageBloc() : super(IncomingRaceMessageState.initial()) {
    on<RaceMsgStarted>(_onStarted);
    on<RaceMsgEventStatusChanged>(_onEventStatusChanged);
    on<RaceMsgUiLapUpdated>(_onUiLapUpdated);
  }

  void _onStarted(
      RaceMsgStarted event, Emitter<IncomingRaceMessageState> emit) {
    emit(state);
  }

  void _onEventStatusChanged(
      RaceMsgEventStatusChanged event, Emitter<IncomingRaceMessageState> emit) {
    var oldState = RaceStatus.values.byName(event.eventData.oldState);
    var newState = RaceStatus.values.byName(event.eventData.newState);
    emit(IncomingRaceMessageState.raceEventStatusChange(oldState, newState));
  }

  void _onUiLapUpdated(
      RaceMsgUiLapUpdated event, Emitter<IncomingRaceMessageState> emit) {
    emit(IncomingRaceMessageState.raceUiLapUpdate(
        event.eventData.controllerId,
        event.eventData.laptime,
        hexOrRGBToColor(event.eventData.controllerData.colorBg),
        hexOrRGBToColor(event.eventData.controllerData.colorText)));
    // Create driver object and add to list
    Driver driver = Driver(
      id: event.eventData.driverData.id,
      name: event.eventData.driverData.name,
      shortName: event.eventData.driverData.nameShort,
      textColor: hexOrRGBToColor(event.eventData.controllerData.colorText),
      bgColor: hexOrRGBToColor(event.eventData.controllerData.colorBg),
    );
    if (!driversList.containsKey(driver.id)) {
      driversList.putIfAbsent(driver.id, () => driver);
      emit(IncomingRaceMessageState.updateDriversList(
          driversList.values.toList()));
    }
    emit(state);
  }
}
