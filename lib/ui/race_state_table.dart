import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_race_monitor/event_model/bloc/incoming_race_message_bloc.dart';
import 'package:smart_race_monitor/model/driver_model.dart';

class RaceStatusTableBox extends StatelessWidget {
  const RaceStatusTableBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        width: double.infinity,
        height: 140,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(112, 113, 115, 0.4),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            const Center(
                child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Race Status",
                textScaler: TextScaler.linear(1.5),
              ),
            )),
            Expanded(
              child: Table(
                //border: TableBorder.all(),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                columnWidths: const {
                  0: FixedColumnWidth(70),
                  1: FlexColumnWidth(),
                  2: FixedColumnWidth(50),
                },
                children: [
                  const TableRow(
                      children: [RaceStateBox(), RaceStateText(), Text("")]),
                  TableRow(children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Fahrer:"),
                    ),
                    const DriversBox(),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
                      child: SizedBox(
                        width: 50,
                        height: 50,
                        child: FittedBox(
                          child: FloatingActionButton(
                              tooltip: "Fahrerliste zurücksetzen",
                              heroTag: "resetDriverList",
                              onPressed: () => context
                                  .read<IncomingRaceMessageBloc>()
                                  .add(const IncomingRaceMessageEvent
                                      .resetDriversListPressed()),
                              child: const Icon(Icons.clear_rounded)),
                        ),
                      ),
                    ),
                  ])
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
          RaceEventStatusChange() => raceStatusToColor(state.newState).color,
          _ => Colors.grey
        };
        return Center(
            child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: c1,
          ),
          width: 24,
          height: 24,
        ));
      },
    );
  }
}

class RaceStateText extends StatelessWidget {
  const RaceStateText({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IncomingRaceMessageBloc, IncomingRaceMessageState>(
      builder: (context, state) {
        String label = switch (state) {
          RaceEventStatusChange() => raceStatusToColor(state.newState).label,
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
    return BlocBuilder<IncomingRaceMessageBloc, IncomingRaceMessageState>(
      buildWhen: (previous, current) =>
          previous != current && current is RaceUpdateDriversList,
      builder: (context, state) {
        List<Driver> drivers = switch (state) {
          RaceUpdateDriversList() => state.driversList,
          _ => []
        };
        //print("DriversList: $drivers");
        List<Widget> driverWidgets =
            drivers.map((e) => buildSingleDriverBox(e)).toList();
        return Row(
          children: driverWidgets,
        );
      },
    );
  }
}

({MaterialColor color, String label}) raceStatusToColor(
        RaceStatus raceStatus) =>
    switch (raceStatus) {
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

Widget buildSingleDriverBox(Driver driver) => Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 2.0),
      child: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            color: driver.bgColor,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Center(
              child: Text(
            driver.shortName,
            style: TextStyle(color: driver.textColor),
          ))),
    );
