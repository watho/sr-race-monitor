import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_race_monitor/ui/race_state_table.dart';
import 'package:smart_race_monitor/views/game/presentation/bloc/game_state_bloc.dart';
import 'package:smart_race_monitor/views/game/presentation/ui/game_actions.dart';
import 'package:smart_race_monitor/views/game/presentation/ui/game_page_widgets.dart';
import 'package:smart_race_monitor/views/game/service/Timer.dart';

class GameTabletPage extends StatelessWidget {
  const GameTabletPage({super.key, required this.drawer});

  final Widget drawer;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => GameStateBloc(timer: const GameTimer()),
      child: Scaffold(
        body: Row(children: [
          drawer,
          const Expanded(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                RaceStatusTableBox(),
                Text(
                  "SR Race Game",
                  textScaler: TextScaler.linear(4),
                ),
                Text(
                  "2023",
                  textScaler: TextScaler.linear(2),
                ),
                GameBox(),
                GameActions()
              ]))
        ]),
      ),
    );
  }
}
