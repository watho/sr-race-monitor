import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:smart_race_monitor/views/game/service/Timer.dart';

part 'game_state_event.dart';
part 'game_state_state.dart';

class GameStateBloc extends Bloc<GameStateEvent, GameStateState> {
  final GameTimer _timer;
  static const int _duration = 60 * 5;

  StreamSubscription<int>? _timerSubscription;

  GameStateBloc({required GameTimer timer})
      : _timer = timer,
        super(const GameStateInitial(_duration)) {
    on<TimerStarted>(_onStarted);
    on<TimerReset>(_onReset);
    on<_TimerTicked>(_onTicked);
  }

  @override
  Future<void> close() {
    _timerSubscription?.cancel();
    return super.close();
  }

  void _onStarted(TimerStarted event, Emitter<GameStateState> emit) {
    emit(TimerRunInProgress(event.duration));
    _timerSubscription?.cancel();
    _timerSubscription = _timer
        .tick(ticks: event.duration)
        .listen((duration) => add(_TimerTicked(duration: duration)));
  }

  void _onTicked(_TimerTicked event, Emitter<GameStateState> emit) {
    emit(event.duration > 0
        ? TimerRunInProgress(event.duration)
        : TimerRunComplete(event.duration));
  }

  void _onReset(TimerReset event, Emitter<GameStateState> emit) {
    _timerSubscription?.cancel();
    emit(const GameStateInitial(_duration));
  }
}
