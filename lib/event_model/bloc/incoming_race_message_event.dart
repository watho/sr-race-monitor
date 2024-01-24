part of 'incoming_race_message_bloc.dart';

@freezed
class IncomingRaceMessageEvent with _$IncomingRaceMessageEvent {
  const factory IncomingRaceMessageEvent.started() = RaceMsgStarted;

  const factory IncomingRaceMessageEvent.uiLapUpdated(
          final DateTime timestamp, final UiLapUpdate eventData) =
      RaceMsgUiLapUpdated;

  const factory IncomingRaceMessageEvent.eventStatusChanged(
          final DateTime timestamp, EventChangeStatus eventData) =
      RaceMsgEventStatusChanged;

  const factory IncomingRaceMessageEvent.eventStart() = RaceMsgEventStart;
}
