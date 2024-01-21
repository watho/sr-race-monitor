part of 'race_event_bloc.dart';

enum RaceEventType {
  unknown,
  uiLapUpdate,
  eventChangeStatus,
  eventStart,
  eventEnd
}

sealed class RaceEventState extends Equatable {
  const RaceEventState(this.raceEventType, this.oldState, this.newState);

  final RaceEventType raceEventType;
  final RaceStatus newState;
  final RaceStatus oldState;

  @override
  List<Object> get props => [raceEventType, oldState, newState];
}

class RaceEventInitial extends RaceEventState {
  const RaceEventInitial(super.raceEventType, super.oldState, super.newState);
}

class RaceEventUiLapUpdate extends RaceEventState {
  const RaceEventUiLapUpdate(
      super.raceEventType, super.oldState, super.newState);
}

class RaceEventEventStart extends RaceEventState {
  const RaceEventEventStart(
      super.raceEventType, super.oldState, super.newState);
}

class RaceEventEventEnd extends RaceEventState {
  const RaceEventEventEnd(super.raceEventType, super.oldState, super.newState);
}

class RaceEventEventChangeStatus extends RaceEventState {
  const RaceEventEventChangeStatus(
      super.raceEventType, super.oldState, super.newState);
}
