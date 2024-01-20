import 'package:flutter/material.dart';
import 'package:smart_race_monitor/views/home/presentation/ui/dashboard/race_state_table.dart';
import 'package:smart_race_monitor/views/home/presentation/ui/dashboard/lap_table.dart';
import 'package:smart_race_monitor/util/temp_box.dart';

class HomeTablet extends StatelessWidget {
  const HomeTablet({super.key, required this.drawer});

  final Widget drawer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tablet"),
      ),
      drawer: drawer,
      body: const Column(
        children: [
          Flexible(
            flex: 1,
            child: Row(
              children: [
                RaceStatusTableBox(flexValue: 2),
                LapTableBox(
                  flexValue: 2,
                  columnCount: 2,
                ),
                TempBox(
                  title: "Istwerte 2",
                  flexValue: 1,
                ),
              ],
            ),
          ),
          TempBox(
            title: "Trendmodul",
            flexValue: 2,
          ),
          TempBox(
            title: "Alarmliste",
            flexValue: 1,
          ),
        ],
      ),
    );
  }
}
