import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_race_monitor/event_model/bloc/incoming_race_message_bloc.dart';
import 'package:smart_race_monitor/util/routing/drawer.dart';
import 'package:smart_race_monitor/util/routing/responsive_layout.dart';
import 'package:smart_race_monitor/util/routing/router.dart';
import 'package:smart_race_monitor/views/game/presentation/bloc/game_state_bloc.dart';
import 'package:smart_race_monitor/views/game/presentation/ui/layout/game_desktop.dart';
import 'package:smart_race_monitor/views/game/presentation/ui/layout/game_mobile.dart';
import 'package:smart_race_monitor/views/game/presentation/ui/layout/game_tablet.dart';
import 'package:smart_race_monitor/views/game/service/Timer.dart';

class GameSkeleton extends StatelessWidget {
  const GameSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    AppDrawer drawer = AppDrawer(
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
