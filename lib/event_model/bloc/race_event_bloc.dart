import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'race_event_event.dart';
part 'race_event_state.dart';

class RaceEventBloc extends Bloc<RaceEventEvent, RaceEventState> {
  RaceEventBloc() : super(const RaceEventInitial(RaceEventType.unknown)) {
    on<RaceStarted>(_onRaceStarted);
    on<RaceEnded>(_onRaceEnded);
    on<UiLapUpdated>(_onUiLapUpdated);
    on<RaceStatusChanged>(_onEventChangeStatus);
  }

  void _onRaceStarted(RaceStarted event, Emitter<RaceEventState> emit) {
    emit(const RaceEventEventStart(RaceEventType.eventStart));
  }

  void _onRaceEnded(RaceEnded event, Emitter<RaceEventState> emit) {
    emit(const RaceEventEventEnd(RaceEventType.eventEnd));
  }

  void _onUiLapUpdated(UiLapUpdated event, Emitter<RaceEventState> emit) {
    emit(const RaceEventUiLapUpdate(RaceEventType.uiLapUpdate));
  }

  void _onEventChangeStatus(
      RaceStatusChanged event, Emitter<RaceEventState> emit) {
    emit(const RaceEventEventChangeStatus(RaceEventType.eventChangeStatus));
  }
}
