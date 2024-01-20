import 'package:flutter/material.dart';

class RaceStatusTableBox extends StatelessWidget {
  const RaceStatusTableBox({super.key, required this.flexValue});

  final int flexValue;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: flexValue,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
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
                child: SingleChildScrollView(
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
              ),
            ],
          ),
        ),
      ),
    );
  }

  TableRow createStatusRow(Color c1, String status1) {
    return TableRow(children: [
      Center(
          child: Container(
        color: c1,
        width: 20,
        height: 20,
      )),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(status1),
      ),
    ]);
  }
}
