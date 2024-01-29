import 'package:flutter/material.dart';
import 'package:smart_race_monitor/views/settings/presentation/ui/settings_form.dart';

class SettingsMobile extends StatelessWidget {
  const SettingsMobile({super.key, required this.drawer});

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
          SettingsFormular(),
        ],
      ),
    );
  }
}
