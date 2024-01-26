import 'package:flutter/material.dart';
import 'package:smart_race_monitor/ui/race_state_table.dart';
import 'package:smart_race_monitor/views/game/presentation/ui/game_actions.dart';
import 'package:smart_race_monitor/views/game/presentation/ui/game_page_widgets.dart';

class GameMobilePage extends StatelessWidget {
  const GameMobilePage({super.key, required this.drawer});

  final Widget drawer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        children: [
          Image.asset(
            'assets/icon.png',
            semanticLabel: "Logo",
            height: 32,
            width: 32,
          ),
          const Text(" SR Race Game"),
        ],
      )),
      drawer: drawer,
      body: const Column(
        children: [
          RaceStatusTableBox(),
          GameBox(),
          GameActions(),
        ],
      ),
    );
  }
}
