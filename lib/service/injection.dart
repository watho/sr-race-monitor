import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_race_monitor/service/injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
configureDependencies() => getIt.init();
