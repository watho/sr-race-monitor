import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_race_monitor/event_model/bloc/incoming_race_message_bloc.dart';
import 'package:smart_race_monitor/views/game/service/Timer.dart';

part 'game_state_bloc.freezed.dart';
part 'game_state_event.dart';
part 'game_state_state.dart';

class GameStateBloc extends Bloc<GameStateEvent, GameStateState> {
  final GameTimer _timer;
  final IncomingRaceMessageBloc _messageBloc;
  static const int _gameDuration = 60 * 5;
  int _remainingTime = 0;
  int _points = 0;
  Color _desiredColor = Colors.grey;

  StreamSubscription<int>? _timerSubscription;

  GameStateBloc(
      {required GameTimer timer, required IncomingRaceMessageBloc messageBloc})
      : _timer = timer,
        _messageBloc = messageBloc,
        super(GameStateState.initial(_gameDuration)) {
    on<TimerStarted>(_onStarted);
    on<TimerReset>(_onReset);
    on<_TimerTicked>(_onTicked);
    on<_LapUpdated>(_onLapUpdated);
  }

  @override
  Future<void> close() {
    _timerSubscription?.cancel();
    return super.close();
  }

  void _onStarted(TimerStarted event, Emitter<GameStateState> emit) {
    _remainingTime = event.duration;
    emit(TimerRunInProgress(event.duration));
    _points = 0;
    emit(PointUpdate(_points));
    // Get color from known controller
    _desiredColor = _findNextColor();
    emit(NewDesiredColor(_desiredColor));
    _timerSubscription?.cancel();
    _timerSubscription = _timer
        .tick(ticks: event.duration)
        .listen((duration) => add(_TimerTicked(duration)));
  }

  void _onTicked(_TimerTicked event, Emitter<GameStateState> emit) {
    _remainingTime = event.duration;
    emit(event.duration > 0
        ? TimerRunInProgress(event.duration)
        : TimerRunComplete());
  }

  void _onReset(TimerReset event, Emitter<GameStateState> emit) {
    _timerSubscription?.cancel();
    emit(GameStateInitial(_gameDuration));
  }

  void _onLapUpdated(_LapUpdated event, Emitter<GameStateState> emit) {
    // if color of lapupdate equals desired color we get a point
    if (_remainingTime > 0 && event.actualColor == _desiredColor) {
      _points++;
      emit(GameStateState.pointUpdate(_points));
      _desiredColor = _findNextColor();
      emit(NewDesiredColor(_desiredColor));
    }
  }

  Color _findNextColor() {
    // Get color from known controller
    var colorList = _messageBloc.driversList.values
        .map((driver) => driver.bgColor)
        .toList();
    colorList.shuffle();
    return colorList.firstOrNull ?? Colors.grey;
  }
}
