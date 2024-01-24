part of 'incoming_race_message_bloc.dart';

@freezed
class IncomingRaceMessageEvent with _$IncomingRaceMessageEvent {
  const factory IncomingRaceMessageEvent.started() = RaceMsgStarted;

  const factory IncomingRaceMessageEvent.uiLapUpdated(
    final String controllerId,
    final Color controllerBgColor,
    final Color controllerTextColor,
    final String laptime,
    final Driver driver,
  ) = RaceMsgUiLapUpdated;

  const factory IncomingRaceMessageEvent.eventStatusChanged(
    RaceStatus oldState,
    RaceStatus newState,
  ) = RaceMsgEventStatusChanged;
}
