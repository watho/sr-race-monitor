// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:smart_race_monitor/event_model/bloc/incoming_race_message_bloc.dart'
    as _i3;
import 'package:smart_race_monitor/service/i_smart_race_message_handler.dart'
    as _i4;
import 'package:smart_race_monitor/service/impl/smart_race_message_handler.dart'
    as _i5;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.IncomingRaceMessageBloc>(_i3.IncomingRaceMessageBloc());
    gh.singleton<_i4.SmartRaceMessageHandler>(_i5.SmartRaceMessageHandlerImpl(
        bloc: gh<_i3.IncomingRaceMessageBloc>()));
    return this;
  }
}
