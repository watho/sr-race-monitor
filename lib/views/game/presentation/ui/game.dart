import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_race_monitor/views/game/presentation/bloc/game_state_bloc.dart';
import 'package:smart_race_monitor/views/game/presentation/ui/game_actions.dart';
import 'package:smart_race_monitor/views/game/service/Timer.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key, required this.drawer});

  final Widget drawer;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => GameStateBloc(timer: GameTimer()),
      child: Scaffold(
        body: Row(children: [
          drawer,
          Expanded(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                const Text(
                  "SR Race Game",
                  textScaler: TextScaler.linear(4),
                ),
                const Text(
                  "2023",
                  textScaler: TextScaler.linear(2),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(112, 113, 115, 0.4),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Table(
                        // border: TableBorder.all(),
                        defaultVerticalAlignment:
                            TableCellVerticalAlignment.middle,
                        columnWidths: const {
                          0: IntrinsicColumnWidth(),
                          1: FlexColumnWidth(),
                        },
                        children: [
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Zeit"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TimerText(),
                            )
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Letzte Zieldurchfahrt"),
                            ),
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: Color.fromRGBO(255, 322, 11, 1)),
                                ))
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Nächste Farbe"),
                            ),
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(2, 342, 1, 1)),
                                ))
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Punkte"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("data"),
                            )
                          ]),
                        ]),
                  ),
                ),
                const GameActions()
              ]))
        ]),
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
