part of 'game_state_bloc.dart';

@freezed
sealed class GameStateEvent with _$GameStateEvent {
  const factory GameStateEvent.started() = GameStarted;

  const factory GameStateEvent.timerStarted(final int duration) = TimerStarted;

  const factory GameStateEvent.timerPaused() = TimerPaused;

  const factory GameStateEvent.timerResumed() = TimerResumed;

  const factory GameStateEvent.timerReset() = TimerReset;

  const factory GameStateEvent.timerTicked(final int duration) = _TimerTicked;

  const factory GameStateEvent.lapUpdated(final Color actualColor) =
      _LapUpdated;
}
