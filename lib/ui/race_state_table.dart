import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_race_monitor/event_model/bloc/race_event_bloc.dart';

class RaceStatusTableBox extends StatelessWidget {
  const RaceStatusTableBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: 100,
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
                children: [createStatusRow(Colors.green, "running")],
              ),
            ),
          ],
        ),
      ),
    );
  }

  TableRow createStatusRow(Color c1, String status1) {
    return TableRow(children: [
      const RaceStateBox(),
      RaceStateText(),
    ]);
  }
}

class RaceStateBox extends StatelessWidget {
  const RaceStateBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RaceEventBloc, RaceEventState>(
      builder: (context, state) {
        Color c1 = switch (state.newState) {
          RaceStatus.unknown => Colors.grey,
          RaceStatus.running => Colors.green,
          RaceStatus.ended => Colors.red,
          RaceStatus.prepare_for_start => Colors.yellow,
          RaceStatus.starting => Colors.yellow,
          RaceStatus.jumpstart => Colors.deepOrangeAccent,
          RaceStatus.suspended => Colors.red,
          RaceStatus.restarting => Colors.yellow,
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
  RaceStateText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final newRaceState =
        context.select((RaceEventBloc bloc) => bloc.state.newState);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(newRaceState.toString()),
    );
  }
}
