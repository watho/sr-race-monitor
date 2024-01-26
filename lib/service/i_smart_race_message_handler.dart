import 'package:smart_race_monitor/event_model/bloc/incoming_race_message_bloc.dart';

abstract class SmartRaceMessageHandler {
  SmartRaceMessageHandler();

  Future startServer(final int port, final bool hotReload,
      {IncomingRaceMessageBloc? bloc});

  Future stopServer();
}
