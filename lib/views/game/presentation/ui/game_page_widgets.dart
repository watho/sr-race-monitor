import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_race_monitor/event_model/bloc/race_event_bloc.dart';
import 'package:smart_race_monitor/views/game/presentation/bloc/game_state_bloc.dart';

class GameBox extends StatelessWidget {
  const GameBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromRGBO(112, 113, 115, 0.4),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Table(
            // border: TableBorder.all(),
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            columnWidths: const {
              0: IntrinsicColumnWidth(),
              1: FlexColumnWidth(),
            },
            children: [
              const TableRow(children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Zeit"),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TimerText(),
                )
              ]),
              const TableRow(children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Letzte Zieldurchfahrt"),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: LastControllerColor(),
                )
              ]),
              TableRow(children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Nächste Farbe"),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(2, 342, 1, 1)),
                    ))
              ]),
              const TableRow(children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Punkte"),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("data"),
                )
              ]),
            ]),
      ),
    );
  }
}

class LastControllerColor extends StatelessWidget {
  const LastControllerColor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RaceEventBloc, RaceEventBlocState>(
      buildWhen: (prev, curr) => prev != curr && curr is RaceEventUiLapUpdate,
      builder: (context, state) {
        ({Color bgColor, Color textColor, String label}) stateData =
            switch (state) {
          RaceEventUiLapUpdate() => (
              bgColor: state.controllerBgColor,
              textColor: state.controllerTextColor,
              label: state.controllerId
            ),
          _ => (bgColor: Colors.green, textColor: Colors.green, label: "-1")
        };
        return Container(
          height: 50,
          decoration: BoxDecoration(
              shape: BoxShape.rectangle, color: stateData.bgColor),
          child: Center(
            child: Text(
                textScaler: const TextScaler.linear(2),
                style: TextStyle(color: stateData.textColor),
                stateData.label),
          ),
        );
      },
    );
  }
}

class DesiredControllerColor extends StatelessWidget {
  const DesiredControllerColor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RaceEventBloc, RaceEventBlocState>(
      buildWhen: (context, state) => true,
      builder: (context, state) {
        Color controllerColor = switch (state) {
          RaceEventUiLapUpdate() => state.controllerBgColor,
          _ => Colors.green
        };
        return Container(
          height: 50,
          decoration:
              BoxDecoration(shape: BoxShape.rectangle, color: controllerColor),
          child: Text("1"),
        );
      },
    );
  }
}

class TimerText extends StatelessWidget {
  const TimerText({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameStateBloc, GameStateState>(
      builder: (context, state) {
        final duration = state.duration;
        final minutesStr =
            ((duration / 60) % 60).floor().toString().padLeft(2, '0');
        final secondsStr = (duration % 60).floor().toString().padLeft(2, '0');
        return Text(
          '$minutesStr:$secondsStr',
          style: Theme.of(context).textTheme.displayLarge,
        );
      },
    );
  }
}
