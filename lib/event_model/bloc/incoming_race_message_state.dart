part of 'incoming_race_message_bloc.dart';

@freezed
sealed class IncomingRaceMessageState with _$IncomingRaceMessageState {
  factory IncomingRaceMessageState.initial() = _Initial;

  factory IncomingRaceMessageState.raceEventStatusChange(
    RaceStatus oldState,
    RaceStatus newState,
  ) = RaceEventStatusChange;

  factory IncomingRaceMessageState.raceUiLapUpdate(
    DateTime timeStamp,
    String controllerId,
    String laptime,
    int laps,
    Color controllerBgColor,
    Color controllerTextColor,
  ) = RaceUiLapUpdate;

  factory IncomingRaceMessageState.updateDriversList(
    List<Driver> driversList,
  ) = RaceUpdateDriversList;
}
