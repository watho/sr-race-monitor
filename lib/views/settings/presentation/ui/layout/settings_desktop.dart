import 'package:flutter/material.dart';
import 'package:smart_race_monitor/views/settings/presentation/ui/settings_form.dart';

class SettingsDesktop extends StatelessWidget {
  const SettingsDesktop({super.key, required this.drawer});

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
                  child: SettingsFormular(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
