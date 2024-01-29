import 'package:flutter/material.dart';

class AboutMobile extends StatelessWidget {
  const AboutMobile({super.key, required this.drawer});

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "SR Race Monitor",
            textScaler: TextScaler.linear(3),
          ),
          const Text(
            "2023",
            textScaler: TextScaler.linear(2),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Image.asset(
              'assets/icon.png',
              semanticLabel: "Logo",
              height: 300,
              width: 300,
            ),
          )
        ],
      ),
    );
  }
}
