import 'package:flutter/material.dart';
import 'package:smart_race_monitor/ui/race_state_table.dart';
import 'package:smart_race_monitor/views/game/presentation/ui/game_actions.dart';
import 'package:smart_race_monitor/views/game/presentation/ui/game_page_widgets.dart';

class GameDesktopPage extends StatelessWidget {
  const GameDesktopPage({super.key, required this.drawer});

  final Widget drawer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.blue.shade50,
            Colors.blue.shade500,
          ],
        ),
      ),
    );
  }
}
