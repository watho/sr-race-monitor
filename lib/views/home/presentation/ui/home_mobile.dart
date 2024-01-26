import 'package:flutter/material.dart';
import 'package:smart_race_monitor/ui/race_state_table.dart';
import 'package:smart_race_monitor/views/home/presentation/ui/dashboard/lap_table.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key, required this.drawer});

  final Widget drawer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/icon.png',
              semanticLabel: "Logo",
              height: 32,
              width: 32,
            ),
          ),
          const Text("SR Race Monitor"),
        ],
      )),
      drawer: drawer,
      body: const Column(
        children: [
          RaceStatusTableBox(),
          LapTableBox(
            flexValue: 2,
            columnCount: 1,
          ),
        ],
      ),
    );
  }
}
