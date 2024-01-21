part of 'race_event_bloc.dart';

enum RaceEventType {
  unknown,
  uiLapUpdate,
  eventChangeStatus,
  eventStart,
  eventEnd
}

sealed class RaceEventState extends Equatable {
  const RaceEventState(this.raceEventType);
  final RaceEventType raceEventType;

  @override
  List<Object> get props => [raceEventType];
}

class RaceEventInitial extends RaceEventState {
  const RaceEventInitial(super.raceEventType);
}

class RaceEventUiLapUpdate extends RaceEventState {
  const RaceEventUiLapUpdate(super.raceEventType);
}

class RaceEventEventStart extends RaceEventState {
  const RaceEventEventStart(super.raceEventType);
}

class RaceEventEventEnd extends RaceEventState {
  const RaceEventEventEnd(super.raceEventType);
}

class RaceEventEventChangeStatus extends RaceEventState {
  const RaceEventEventChangeStatus(super.raceEventType);
}
