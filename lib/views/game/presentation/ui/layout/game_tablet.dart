import 'package:flutter/material.dart';
import 'package:smart_race_monitor/views/game/presentation/ui/game_actions.dart';
import 'package:smart_race_monitor/views/game/presentation/ui/game_page_widgets.dart';
import 'package:smart_race_monitor/widgets/race_state_table.dart';

class GameTabletPage extends StatelessWidget {
  const GameTabletPage({super.key, required this.drawer});

  final Widget drawer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: [
        drawer,
        Expanded(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: RaceStatusTableBox(),
              ),
              const Text(
                "SR Race Game",
                textScaler: TextScaler.linear(3),
              ),
              const HelpText(),
              GameBox(),
              const GameActions()
            ]))
      ]),
    );
  }
}
