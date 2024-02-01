import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:smart_race_monitor/event_model/bloc/incoming_race_message_bloc.dart';
import 'package:smart_race_monitor/views/game/service/timer.dart';

part 'game_state_bloc.freezed.dart';
part 'game_state_event.dart';
part 'game_state_state.dart';

class GameStateBloc extends Bloc<GameStateEvent, GameStateState> {
  final Logger log = Logger(printer: PrettyPrinter(methodCount: 1));
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
    on<TimerTicked>(_onTicked);
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
    (Color, Color, String) desiredValues = _findNextColor();
    _desiredColor = desiredValues.$1;
    emit(NewDesiredColor(_desiredColor, desiredValues.$2, desiredValues.$3));
    _timerSubscription?.cancel();
    _timerSubscription = _timer
        .tick(ticks: event.duration)
        .listen((duration) => add(TimerTicked(duration)));
  }

  void _onTicked(TimerTicked event, Emitter<GameStateState> emit) {
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
    log.d(
        "GameBloc.OnLapUpdate. Remaining time=$_remainingTime; points=$_points; actualColor=${event.actualColor}; desiredColor=$_desiredColor");
    if (_remainingTime > 0) {
      // if color of lapupdate equals desired color we get as many points as drivers
      if (event.actualColor == _desiredColor) {
        _points = _points + _messageBloc.driversList.length;
        emit(GameStateState.pointUpdate(_points));
        (Color, Color, String) desiredValues = _findNextColor();
        _desiredColor = desiredValues.$1;
        emit(
            NewDesiredColor(_desiredColor, desiredValues.$2, desiredValues.$3));
      } else {
        // if color not matches decrease points
        //log.d("Wrong car spotted. Old points: $_points");
        _points--;
        _points = max(0, _points);
        //log.d("Wrong car spotted. New points: $_points");
        emit(GameStateState.pointUpdate(_points));
      }
    }
  }

  (Color color, Color driverColor, String driverName) _findNextColor() {
    // Get color from known controller
    var colorList = _messageBloc.driversList.values
        .map((driver) => (driver.bgColor, driver.textColor, driver.name))
        .toList();
    colorList.shuffle();
    return colorList.firstOrNull ?? (Colors.grey, Colors.grey, "");
  }
}
