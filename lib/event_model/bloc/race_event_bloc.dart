import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'race_event_event.dart';
part 'race_event_state.dart';

class RaceEventBloc extends Bloc<RaceEventEvent, RaceEventState> {
  RaceStatus _oldState = RaceStatus.unknown;
  RaceStatus _newState = RaceStatus.unknown;

  RaceEventBloc()
      : super(const RaceEventInitial(
            RaceEventType.unknown, RaceStatus.unknown, RaceStatus.unknown)) {
    on<RaceStarted>(_onRaceStarted);
    on<RaceEnded>(_onRaceEnded);
    on<UiLapUpdated>(_onUiLapUpdated);
    on<RaceStatusChanged>(_onEventChangeStatus);
  }

  void _onRaceStarted(RaceStarted event, Emitter<RaceEventState> emit) {
    emit(RaceEventEventStart(RaceEventType.eventStart, _oldState, _newState));
  }

  void _onRaceEnded(RaceEnded event, Emitter<RaceEventState> emit) {
    emit(RaceEventEventEnd(RaceEventType.eventEnd, _oldState, _newState));
  }

  void _onUiLapUpdated(UiLapUpdated event, Emitter<RaceEventState> emit) {
    emit(RaceEventUiLapUpdate(RaceEventType.uiLapUpdate, _oldState, _newState));
  }

  void _onEventChangeStatus(
      RaceStatusChanged event, Emitter<RaceEventState> emit) {
    _oldState = event.oldState;
    _newState = event.newState;
    emit(RaceEventEventChangeStatus(
        RaceEventType.eventChangeStatus, event.oldState, event.newState));
  }
}
