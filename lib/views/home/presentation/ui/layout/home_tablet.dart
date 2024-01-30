import 'package:flutter/material.dart';
import 'package:smart_race_monitor/views/home/presentation/ui/dashboard/lap_table.dart';
import 'package:smart_race_monitor/widgets/race_state_table.dart';

class HomeTablet extends StatelessWidget {
  const HomeTablet({super.key, required this.drawer});

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
                Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: RaceStatusTableBox(),
                ),
                Expanded(
                  child: LapTableBox(
                    flexValue: 2,
                    columnCount: 1,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
