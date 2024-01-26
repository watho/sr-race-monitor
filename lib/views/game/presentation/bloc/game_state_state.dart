part of 'game_state_bloc.dart';

@freezed
sealed class GameStateState with _$GameStateState {
  factory GameStateState.initial(final int duration) = GameStateInitial;

  factory GameStateState.timerRunInProgress(final int duration) =
      TimerRunInProgress;

  factory GameStateState.pointUpdate(final int points) = PointUpdate;

  factory GameStateState.newDesiredColor(
          final Color color, final Color driverColor, final String driverName) =
      NewDesiredColor;

  factory GameStateState.timerRunComplete() = TimerRunComplete;
}
