import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_race_monitor/ui/race_state_table.dart';
import 'package:smart_race_monitor/views/game/presentation/bloc/game_state_bloc.dart';
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

class TimerText extends StatelessWidget {
  const TimerText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final duration =
        context.select((GameStateBloc bloc) => bloc.state.duration);
    final minutesStr =
        ((duration / 60) % 60).floor().toString().padLeft(2, '0');
    final secondsStr = (duration % 60).floor().toString().padLeft(2, '0');
    return Text(
      '$minutesStr:$secondsStr',
      style: Theme.of(context).textTheme.displayLarge,
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
