import 'package:get_it/get_it.dart';
import 'package:smart_race_monitor/event_model/bloc/incoming_race_message_bloc.dart';
import 'package:smart_race_monitor/service/impl/smart_race_message_handler.dart';

import './injection.config.dart';

final getIt = GetIt.instance;

//@InjectableInit(initializerName: 'init')
void configureDependencies() {
  var bloc = getIt
      .registerSingleton<IncomingRaceMessageBloc>(IncomingRaceMessageBloc());
  getIt.registerSingleton<SmartRaceMessageHandler>(
      () => SmartRaceMessageHandler());
}
