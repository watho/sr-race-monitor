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
  const RaceEventBlocEvent();
}

final class RaceStarted extends RaceEventBlocEvent {
  const RaceStarted();
}

final class RaceEnded extends RaceEventBlocEvent {
  const RaceEnded();
}

final class RaceStatusChanged extends RaceEventBlocEvent {
  const RaceStatusChanged({required this.oldState, required this.newState});

  final RaceStatus oldState;
  final RaceStatus newState;
}

final class UiLapUpdated extends RaceEventBlocEvent {
  const UiLapUpdated({required this.controllerColor, required this.lapTime});

  final Color controllerColor;
  final String lapTime;
}
