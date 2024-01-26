import 'package:flutter/material.dart';
import 'package:smart_race_monitor/ui/race_state_table.dart';
import 'package:smart_race_monitor/views/home/presentation/ui/dashboard/lap_table.dart';

class HomeTablet extends StatelessWidget {
  const HomeTablet({super.key, required this.drawer});

  final Widget drawer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SR Race Monitor"),
      ),
      drawer: drawer,
      body: const Expanded(
        child: Column(
          children: [
            Row(
              children: [
                RaceStatusTableBox(),
                LapTableBox(
                  flexValue: 2,
                  columnCount: 2,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
