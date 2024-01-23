import 'package:flutter/material.dart';

class LapTableBox extends StatelessWidget {
  const LapTableBox(
      {super.key, required this.flexValue, required this.columnCount});

  final int flexValue;
  final int columnCount;

  // BuildContext context;

  @override
  Widget build(BuildContext context) {
    // context = context;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: 500,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(112, 113, 115, 0.4),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            const Center(
                child: Text(
              "Race Monitor",
              textScaler: TextScaler.linear(1.5),
            )),
            Expanded(
              child: SingleChildScrollView(
                child: createTable(context),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget createTable(BuildContext context) {
    if (columnCount == 3) {
      return Table(
        // border: TableBorder.all(),
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        columnWidths: const {
          0: IntrinsicColumnWidth(),
          1: FlexColumnWidth(),
          2: IntrinsicColumnWidth(),
          3: FlexColumnWidth(),
          4: IntrinsicColumnWidth(),
          5: FlexColumnWidth()
        },
        children: [
          create3ValueRow(
              createLabel(context, "Oscar", ""),
              "1:22",
              createLabel(context, "Emma", ""),
              "3:44",
              createLabel(context, "Frida", ""),
              "0:12"),
          create3ValueRow(
              createLabel(context, "U", "2"),
              "236 V",
              createLabel(context, "I", "2"),
              "30 A",
              createLabel(context, "P", "+max"),
              "450 kW"),
          create3ValueRow(
              createLabel(context, "U", "3"),
              "236 V",
              createLabel(context, "I", "3"),
              "30 A",
              createLabel(context, "P", "-"),
              "0"),
          create3ValueRow(
              createLabel(context, "U", "max"),
              "236 V",
              createLabel(context, "I", "max"),
              "30 A",
              createLabel(context, "P", "-max"),
              "0 kW"),
          create3ValueRow(
              createLabel(context, "U", "min"),
              "236 V",
              createLabel(context, "Q", ""),
              "100 kVar",
              createLabel(context, "Q", "max"),
              "100 kVar"),
        ],
      );
    } else if (columnCount == 2) {
      return Table(
        // border: TableBorder.all(),
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        columnWidths: const {
          0: IntrinsicColumnWidth(),
          1: FlexColumnWidth(),
          2: IntrinsicColumnWidth(),
          3: FlexColumnWidth(),
        },
        children: [
          create2ValueRow(
            createLabel(context, "U", "1"),
            "236 V",
            createLabel(context, "I", "1"),
            "30 A",
          ),
          create2ValueRow(
            createLabel(context, "U", "2"),
            "236 V",
            createLabel(context, "I", "2"),
            "30 A",
          ),
          create2ValueRow(
            createLabel(context, "U", "3"),
            "236 V",
            createLabel(context, "I", "3"),
            "30 A",
          ),
          create2ValueRow(createLabel(context, "P", "+"), "300 kW",
              createLabel(context, "P", "+max"), "450 kW"),
          create2ValueRow(createLabel(context, "P", "-"), "0",
              createLabel(context, "P", "-max"), "0 kW"),
          create2ValueRow(
            createLabel(context, "U", "max"),
            "236 V",
            createLabel(context, "U", "min"),
            "236 V",
          ),
          create2ValueRow(createLabel(context, "Q", ""), "100 kVar",
              createLabel(context, "Q", "max"), "100 kVar"),
        ],
      );
    }
    // Single col table
    return Table(
      // border: TableBorder.all(),
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      columnWidths: const {
        0: IntrinsicColumnWidth(),
        1: FlexColumnWidth(),
      },
      children: [
        create1ValueRow(createLabel(context, "Oscar", ""), "0:05:12"),
        create1ValueRow(createLabel(context, "Emma", ""), "0:07:32"),
        create1ValueRow(createLabel(context, "Frida", ""), "0:12:22"),
      ],
    );
  }

  RichText createLabel(BuildContext context, String text, String deepened) {
    return RichText(
      text: TextSpan(
          text: text,
          style: DefaultTextStyle.of(context).style,
          children: [
            TextSpan(
              text: deepened,
              style: const TextStyle(height: 1, fontSize: 10),
            )
          ]),
    );
  }

  TableRow create3ValueRow(Widget label1, String value1, Widget label2,
      String value2, Widget label3, String value3) {
    return TableRow(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: label1,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            decoration:
                BoxDecoration(border: Border.all(), color: Colors.white),
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(value1),
            )),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: label2,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            decoration:
                BoxDecoration(border: Border.all(), color: Colors.white),
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(value2),
            )),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: label3,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            decoration:
                BoxDecoration(border: Border.all(), color: Colors.white),
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(value3),
            )),
      ),
    ]);
  }

  TableRow create2ValueRow(
      Widget label1, String value1, Widget label2, String value2) {
    return TableRow(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: label1,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            decoration:
                BoxDecoration(border: Border.all(), color: Colors.white),
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(value1),
            )),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: label2,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            decoration:
                BoxDecoration(border: Border.all(), color: Colors.white),
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(value2),
            )),
      ),
    ]);
  }

  TableRow create1ValueRow(Widget label1, String value1) {
    return TableRow(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: label1,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            decoration:
                BoxDecoration(border: Border.all(), color: Colors.white),
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(value1),
            )),
      ),
    ]);
  }
}
