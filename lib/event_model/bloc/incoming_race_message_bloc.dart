import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:smart_race_monitor/model/driver_model.dart';

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

class IncomingRaceMessageBloc
    extends Bloc<IncomingRaceMessageEvent, IncomingRaceMessageState> {
  var log = Logger(printer: PrettyPrinter(methodCount: 1));
  Map<int, Driver> driversList = {};

  IncomingRaceMessageBloc() : super(const IncomingRaceMessageState.initial()) {
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
    emit(IncomingRaceMessageState.raceEventStatusChange(
        event.oldState, event.newState));
  }

  void _onUiLapUpdated(
      RaceMsgUiLapUpdated event, Emitter<IncomingRaceMessageState> emit) {
    emit(IncomingRaceMessageState.raceUiLapUpdate(event.controllerId,
        event.laptime, event.controllerBgColor, event.controllerTextColor));
    // Create driver object and add to list
    Driver driver = event.driver;
    if (!driversList.containsKey(driver.id)) {
      driversList.putIfAbsent(driver.id, () => driver);
      emit(IncomingRaceMessageState.updateDriversList(
          driversList.values.toList()));
    }

    emit(state);
  }
}
