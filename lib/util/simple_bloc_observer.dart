import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:smart_race_monitor/views/game/presentation/bloc/game_state_bloc.dart';

class SimpleBlocObserver extends BlocObserver {
  var log =
      Logger(printer: PrettyPrinter(methodCount: 1), level: Level.warning);

  @override
  void onEvent(Bloc bloc, Object? event) {
    if (event is! TimerTicked) {
      log.d(event.toString());
    }
    super.onEvent(bloc, event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    if (transition.currentState is! TimerRunInProgress) {
      log.d(transition);
    }
    super.onTransition(bloc, transition);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    if (change.currentState is! TimerRunInProgress) {
      log.d(change);
    }
    super.onChange(bloc, change);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    log.e(error);
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onCreate(BlocBase bloc) {
    log.i("Bloc created: ${bloc.toString()}.");
    super.onCreate(bloc);
  }
}
