part of 'incoming_race_message_bloc.dart';

@freezed
class IncomingRaceMessageState with _$IncomingRaceMessageState {
  const factory IncomingRaceMessageState.initial() = _Initial;

  const factory IncomingRaceMessageState.raceEventStatusChange(
    RaceStatus oldState,
    RaceStatus newState,
  ) = _RaceEventStatusChange;

  const factory IncomingRaceMessageState.raceUiLapUpdate(
    String controllerId,
    String laptime,
    Color controllerBgColor,
    Color controllerTextColor,
  ) = _RaceUiLapUpdate;

  const factory IncomingRaceMessageState.updateDriversList(
    List<Driver> driver,
  ) = _RaceUpdateDriversList;
}
