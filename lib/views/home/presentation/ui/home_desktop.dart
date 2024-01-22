import 'package:flutter/material.dart';
import 'package:smart_race_monitor/ui/race_state_table.dart';
import 'package:smart_race_monitor/views/home/presentation/ui/dashboard/lap_table.dart';
import 'package:smart_race_monitor/util/temp_box.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({super.key, required this.drawer});

  final Widget drawer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          drawer,
          const Expanded(
            child: Column(
              children: [
                RaceStatusTableBox(),
                Expanded(
                  child: LapTableBox(
                    flexValue: 6,
                    columnCount: 1,
                  ),
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
    );
  }
}
