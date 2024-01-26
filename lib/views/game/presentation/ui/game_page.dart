import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_race_monitor/event_model/bloc/incoming_race_message_bloc.dart';
import 'package:smart_race_monitor/util/drawer.dart';
import 'package:smart_race_monitor/util/responsive_layout.dart';
import 'package:smart_race_monitor/util/routing/router.dart';
import 'package:smart_race_monitor/views/game/presentation/bloc/game_state_bloc.dart';
import 'package:smart_race_monitor/views/game/presentation/ui/game_desktop.dart';
import 'package:smart_race_monitor/views/game/presentation/ui/game_mobile.dart';
import 'package:smart_race_monitor/views/game/presentation/ui/game_tablet.dart';
import 'package:smart_race_monitor/views/game/service/Timer.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeDrawer drawer = HomeDrawer(
      selectedRoute: GameRoute().location,
    );
    return BlocProvider(
      create: (_) => GameStateBloc(
          timer: const GameTimer(),
          messageBloc: context.read<IncomingRaceMessageBloc>()),
      child: ResponsiveLayout(
        mobileBody: GameMobilePage(drawer: drawer),
        tabletBody: GameTabletPage(drawer: drawer),
        desktopBody: GameDesktopPage(drawer: drawer),
      ),
    );
  }
}
