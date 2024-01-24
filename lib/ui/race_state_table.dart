import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_race_monitor/event_model/bloc/incoming_race_message_bloc.dart';
import 'package:smart_race_monitor/model/driver_model.dart';

class RaceStatusTableBox extends StatelessWidget {
  const RaceStatusTableBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: 120,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(112, 113, 115, 0.4),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            const Center(
                child: Text(
              "Race Status",
              textScaler: TextScaler.linear(1.5),
            )),
            Expanded(
              child: Table(
                //border: TableBorder.all(),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                columnWidths: const {
                  0: FixedColumnWidth(60),
                  1: FlexColumnWidth(),
                },
                children: const [
                  TableRow(children: [
                    RaceStateBox(),
                    RaceStateText(),
                  ]),
                  TableRow(children: [Text("Fahrer:"), DriversBox()])
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RaceStateBox extends StatelessWidget {
  const RaceStateBox({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IncomingRaceMessageBloc, IncomingRaceMessageState>(
      builder: (context, state) {
        Color c1 = switch (state) {
          IncomingRaceMessageEvent.eventStatusChanged =>
            raceStatusToColor(state).color,
          _ => Colors.grey
        };
        return Center(
            child: Container(
          color: c1,
          width: 20,
          height: 20,
        ));
      },
    );
  }
}

class RaceStateText extends StatelessWidget {
  const RaceStateText({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RaceEventBloc, RaceEventBlocState>(
      builder: (context, state) {
        String label = switch (state) {
          RaceEventEventChangeStatus() =>
            raceStatusToColor(state.newState).label,
          _ => 'unbekannt'
        };
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(label),
        );
      },
    );
  }
}

class DriversBox extends StatelessWidget {
  const DriversBox({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> driversList = [];
    return BlocBuilder<RaceEventBloc, RaceEventBlocState>(
      buildWhen: (previous, current) =>
          previous != current && current is RaceEventDriversChanged,
      builder: (context, state) {
        // FIXME Only RaceEventUiLapUpdate not RaceEventDriversChanged
        print("state $state");
        List<Driver> drivers = switch (state) {
          RaceEventDriversChanged() => state.driverList,
          _ => []
        };
        print("DriversList: $driversList");
        List<Widget> driverWidgets = drivers.map((e) => Text(e.name)).toList();
        return Row(
          children: driverWidgets,
        );
      },
    );
  }
}

({MaterialColor color, String label}) raceStatusToColor(RaceStatus raceStatus) {
  return switch (raceStatus) {
    RaceStatus.running => (color: Colors.green, label: 'Läuft'),
    RaceStatus.ended => (color: Colors.red, label: 'Beendet'),
    RaceStatus.prepare_for_start => (
        color: Colors.yellow,
        label: 'Startvorbereitung'
      ),
    RaceStatus.starting => (color: Colors.yellow, label: 'Startet'),
    RaceStatus.jumpstart => (color: Colors.deepOrange, label: 'Fehlstart'),
    RaceStatus.suspended => (color: Colors.red, label: 'Rennunterbrechung'),
    RaceStatus.restarting => (color: Colors.yellow, label: 'Neustart'),
    _ => (color: Colors.grey, label: 'Unbekannt')
  };
}
