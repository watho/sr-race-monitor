import 'package:flutter/material.dart';
import 'package:smart_race_monitor/views/settings/presentation/ui/settings_page.dart';

class SettingsDesktop extends StatelessWidget {
  const SettingsDesktop({super.key, required this.drawer});

  final Widget drawer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [drawer, const SettingsPage()],
      ),
    );
  }
}
