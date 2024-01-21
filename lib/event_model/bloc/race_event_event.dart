part of 'race_event_bloc.dart';

enum RaceStatus { running, ended }

abstract class RaceEventEvent {
  const RaceEventEvent();
}

final class RaceStarted extends RaceEventEvent {
  const RaceStarted();
}

final class RaceEnded extends RaceEventEvent {
  const RaceEnded();
}

final class RaceStatusChanged extends RaceEventEvent {
  const RaceStatusChanged({required this.oldState, required this.newState});
  final RaceStatus oldState;
  final RaceStatus newState;
}

final class UiLapUpdated extends RaceEventEvent {
  const UiLapUpdated({required this.controllerColor, required this.lapTime});
  final Color controllerColor;
  final String lapTime;
}
