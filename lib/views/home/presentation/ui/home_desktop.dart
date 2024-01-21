import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_race_monitor/event_model/bloc/race_event_bloc.dart';
import 'package:smart_race_monitor/views/home/presentation/bloc/race_status_bloc.dart';
import 'package:smart_race_monitor/views/home/presentation/ui/dashboard/race_state_table.dart';
import 'package:smart_race_monitor/views/home/presentation/ui/dashboard/lap_table.dart';
import 'package:smart_race_monitor/util/temp_box.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({super.key, required this.drawer});

  final Widget drawer;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => RaceEventBloc(),
      child: Scaffold(
        body: Row(
          children: [
            drawer,
            const Expanded(
              child: Column(
                children: [
                  Flexible(
                    flex: 1,
                    child: Row(
                      children: [RaceStatusTableBox(flexValue: 2)],
                    ),
                  ),
                  LapTableBox(
                    flexValue: 6,
                    columnCount: 1,
                  ),
                  TempBox(
                    title: "ConnectionState",
                    flexValue: 1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
