import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'race_status_event.dart';
part 'race_status_state.dart';

class RaceStatusBloc extends Bloc<RaceStatusEvent, RaceStatusState> {
  RaceStatusBloc() : super(RaceStatusInitial()) {
    on<RaceStatusEvent>((event, emit) {
      // TODO: implement event handler
      // Do something when a new race event was received.
      emit(state);
    });
  }
}
