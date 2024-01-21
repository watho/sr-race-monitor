part of 'game_state_bloc.dart';

abstract class GameStateEvent {
  const GameStateEvent();
}

final class TimerStarted extends GameStateEvent {
  const TimerStarted({required this.duration});
  final int duration;
}

final class TimerPaused extends GameStateEvent {
  const TimerPaused();
}

final class TimerResumed extends GameStateEvent {
  const TimerResumed();
}

class TimerReset extends GameStateEvent {
  const TimerReset();
}

class _TimerTicked extends GameStateEvent {
  const _TimerTicked({required this.duration});
  final int duration;
}
