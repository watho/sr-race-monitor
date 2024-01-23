part of 'race_event_bloc.dart';

enum RaceEventType {
  unknown,
  uiLapUpdate,
  eventChangeStatus,
  eventStart,
  eventEnd
}

sealed class RaceEventBlocState extends Equatable {
  const RaceEventBlocState();

  @override
  List<Object> get props => [];
}

class RaceEventInitial extends RaceEventBlocState {
  const RaceEventInitial();
}

class RaceEventUiLapUpdate extends RaceEventBlocState {
  const RaceEventUiLapUpdate();
}

class RaceEventEventStart extends RaceEventBlocState {
  const RaceEventEventStart();
}

class RaceEventEventEnd extends RaceEventBlocState {
  const RaceEventEventEnd();
}

class RaceEventEventChangeStatus extends RaceEventBlocState {
  const RaceEventEventChangeStatus(this.oldState, this.newState);

  final RaceStatus oldState;
  final RaceStatus newState;

  @override
  List<Object> get props => [oldState, newState];
}
