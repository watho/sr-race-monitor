import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key, required this.drawer});

  final Widget drawer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: [
        drawer,
        Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "SR Race Monitor",
              textScaler: TextScaler.linear(4),
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
        ))
      ]),
    );
  }
}
