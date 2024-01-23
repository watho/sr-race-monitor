part of 'race_event_bloc.dart';

enum RaceEventType {
  unknown,
  uiLapUpdate,
  eventChangeStatus,
  eventStart,
  eventEnd
}

sealed class RaceEventBlocState extends Equatable {
  const RaceEventBlocState(this.raceEventType);

  final RaceEventType raceEventType;

  @override
  List<Object> get props => [raceEventType];
}

class RaceEventInitial extends RaceEventBlocState {
  const RaceEventInitial(super.raceEventType);
}

class RaceEventUiLapUpdate extends RaceEventBlocState {
  const RaceEventUiLapUpdate(super.raceEventType);
}

class RaceEventEventStart extends RaceEventBlocState {
  const RaceEventEventStart(super.raceEventType);
}

class RaceEventEventEnd extends RaceEventBlocState {
  const RaceEventEventEnd(super.raceEventType);
}

class RaceEventEventChangeStatus extends RaceEventBlocState {
  const RaceEventEventChangeStatus(
      super.raceEventType, this.oldState, this.newState);

  final RaceStatus oldState;
  final RaceStatus newState;

  @override
  List<Object> get props => [raceEventType, oldState, newState];
}
