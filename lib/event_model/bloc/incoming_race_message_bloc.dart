import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:smart_race_monitor/event_model/event_change_status.dart';
import 'package:smart_race_monitor/event_model/ui_lap_update.dart';
import 'package:smart_race_monitor/model/driver_model.dart';
import 'package:smart_race_monitor/util/color_util.dart';

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

  // maps controllerId to Driver object
  Map<String, Driver> driversList = {};

  IncomingRaceMessageBloc() : super(IncomingRaceMessageState.initial()) {
    on<RaceMsgStarted>(_onStarted);
    on<RaceMsgEventStatusChanged>(_onEventStatusChanged);
    on<RaceMsgUiLapUpdated>(_onUiLapUpdated);
    on<RaceMsgResetDriversListPressed>(_onResetDriversListPressed);
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
    var controllerId = event.eventData.controllerId;
    emit(IncomingRaceMessageState.raceUiLapUpdate(
        controllerId,
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
    if (!driversList.containsKey(controllerId)) {
      // controller not found
      driversList.putIfAbsent(controllerId, () => driver);
      emit(IncomingRaceMessageState.updateDriversList(
          driversList.values.toList()));
    } else if (driversList[controllerId]?.id != driver.id) {
      // controller found but driver is new
      driversList.update(controllerId, (value) => driver);
      emit(IncomingRaceMessageState.updateDriversList(
          driversList.values.toList()));
    }
  }

  void _onResetDriversListPressed(RaceMsgResetDriversListPressed event,
      Emitter<IncomingRaceMessageState> emit) {
    driversList.clear();
    emit(IncomingRaceMessageState.updateDriversList(
        driversList.values.toList()));
  }
}
