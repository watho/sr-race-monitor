import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:smart_race_monitor/event_model/bloc/incoming_race_message_bloc.dart';
import 'package:smart_race_monitor/views/game/presentation/bloc/game_state_bloc.dart';

class GameBox extends StatelessWidget {
  GameBox({super.key});

  final Logger log = Logger(printer: PrettyPrinter(methodCount: 1));

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 8.0),
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
                  child: Text("Zeit:"),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TimerText(),
                )
              ]),
              const TableRow(children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Punkte:"),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: PointsText(),
                )
              ]),
              TableRow(children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Letzte Zieldurchfahrt:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: LastControllerColor(),
                )
              ]),
              const TableRow(children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Nächste Farbe:"),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: DesiredControllerColor(),
                )
              ]),
            ]),
      ),
    );
  }
}

class PointsText extends StatelessWidget {
  const PointsText({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameStateBloc, GameStateState>(
      buildWhen: (previous, current) =>
          previous != current && current is PointUpdate,
      builder: (context, state) {
        int points = switch (state) {
          PointUpdate() => state.points,
          _ => 0,
        };
        return Align(
          alignment: Alignment.centerRight,
          child: Text(
            '$points',
            style: Theme.of(context).textTheme.displayMedium,
          ),
        );
      },
    );
  }
}

class LastControllerColor extends StatelessWidget {
  final Logger log = Logger(printer: PrettyPrinter(methodCount: 1));

  LastControllerColor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<IncomingRaceMessageBloc, IncomingRaceMessageState>(
      listener: (context, state) {
        log.i("LastControllerWidgetBlocListener with state=$state");
        if (state is RaceUiLapUpdate) {
          context
              .read<GameStateBloc>()
              .add(GameStateEvent.lapUpdated(state.controllerBgColor));
        }
      },
      buildWhen: (prev, curr) => prev != curr && curr is RaceUiLapUpdate,
      builder: (context, state) {
        ({Color bgColor, Color textColor, String label}) stateData =
            switch (state) {
          RaceUiLapUpdate() => (
              bgColor: state.controllerBgColor,
              textColor: state.controllerTextColor,
              label: state.laps.toString()
            ),
          _ => (bgColor: Colors.grey, textColor: Colors.grey, label: "")
        };
        return AnimatedContainer(
          duration: const Duration(seconds: 1),
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: stateData.bgColor),
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
    return BlocBuilder<GameStateBloc, GameStateState>(
      buildWhen: (previous, current) =>
          previous != current && current is NewDesiredColor,
      builder: (context, state) {
        (Color, Color, String) desiredValues = switch (state) {
          NewDesiredColor() => (
              state.color,
              state.driverColor,
              state.driverName
            ),
          _ => (Colors.grey, Colors.grey, ""),
        };
        return AnimatedContainer(
          duration: const Duration(seconds: 1),
          height: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: desiredValues.$1),
          child: Center(
            child: Text(
              desiredValues.$3,
              style: Theme.of(context)
                  .textTheme
                  .displaySmall
                  ?.copyWith(color: desiredValues.$2),
            ),
          ),
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
      buildWhen: (previous, current) =>
          previous != current && current is GameStateInitial ||
          current is TimerRunInProgress ||
          current is TimerRunComplete,
      builder: (context, state) {
        final duration = switch (state) {
          GameStateInitial() => state.duration,
          TimerRunInProgress() => state.duration,
          TimerRunComplete() => 0,
          _ => -1,
        };
        Color color = Colors.green;
        var style = Theme.of(context).textTheme.displayMedium;
        if (duration < 60) {
          style = style?.copyWith(color: Colors.red);
        }
        final minutesStr =
            ((duration / 60) % 60).floor().toString().padLeft(2, '0');
        final secondsStr = (duration % 60).floor().toString().padLeft(2, '0');
        return Align(
          alignment: Alignment.centerRight,
          child: Text(
            '$minutesStr:$secondsStr',
            style: style,
          ),
        );
      },
    );
  }
}

class HelpText extends StatelessWidget {
  const HelpText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.orangeAccent.shade100,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            """- Mit den Teilnehmern einmal über die Ziellinie fahren, damit sie oben bei Fahrer auftauchen.
- Spiel starten. Bei 'nächste Farbe' erscheint eine Controllerfarbe.
- Richtiges Auto muss als nächstes über die Zielline, dann gibt es Punkte. Falsches Auto gibt Minuspunkt.
- 5 Minuten Zeit zum Punkte sammeln.""",
            style: Theme.of(context).textTheme.labelSmall,
          ),
        ),
      ),
    );
  }
}
