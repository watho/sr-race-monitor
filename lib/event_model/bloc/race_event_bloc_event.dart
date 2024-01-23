part of 'race_event_bloc.dart';

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

abstract class RaceEventBlocEvent {
  final DateTime timestamp;

  const RaceEventBlocEvent(this.timestamp);
}

final class RaceStarted extends RaceEventBlocEvent {
  const RaceStarted(super.timestamp);
}

final class RaceEnded extends RaceEventBlocEvent {
  const RaceEnded(super.timestamp);
}

final class RaceStatusChanged extends RaceEventBlocEvent {
  const RaceStatusChanged(super.timestamp,
      {required this.oldState, required this.newState});

  final RaceStatus oldState;
  final RaceStatus newState;
}

final class UiLapUpdated extends RaceEventBlocEvent {
  const UiLapUpdated(
    super.timestamp, {
    required this.controllerId,
    required this.controllerBgColor,
    required this.controllerTextColor,
    required this.laptime,
    required this.driver,
  });

  final String controllerId;
  final Color controllerBgColor;
  final Color controllerTextColor;
  final String laptime;
  final Driver driver;
}
