part of 'game_state_bloc.dart';

sealed class GameStateState extends Equatable {
  const GameStateState(this.duration);
  final int duration;

  @override
  List<Object> get props => [duration];
}

class GameStateInitial extends GameStateState {
  const GameStateInitial(super.duration);
  @override
  String toString() {
    return 'Timer initial { duration: $duration }';
  }
}

class TimerRunInProgress extends GameStateState {
  const TimerRunInProgress(super.duration);

  @override
  String toString() {
    return "TimerRunInProgress { duration: $duration }";
  }
}

class TimerRunComplete extends GameStateState {
  const TimerRunComplete(super.duration);

  @override
  String toString() {
    return "TimerRunComplete { duration: $duration }";
  }
}
