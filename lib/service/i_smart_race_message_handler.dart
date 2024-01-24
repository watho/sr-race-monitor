import 'package:smart_race_monitor/event_model/bloc/incoming_race_message_bloc.dart';

abstract class SmartRaceMessageHandler {
  final IncomingRaceMessageBloc bloc;

  SmartRaceMessageHandler(this.bloc);
}
