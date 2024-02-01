import 'package:card_settings/card_settings.dart';
import 'package:flutter/material.dart';
import 'package:smart_race_monitor/widgets/help_box.dart';

class SettingsPage extends StatelessWidget {
  final Color headerColor = Colors.blueGrey;

  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    int port = 8085;
    bool useSSL = false;
    return Expanded(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: SettingsTitle(),
          ),
          const HelpBox("Einstellungen werden noch nicht angewendet."),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromRGBO(112, 113, 115, 0.4),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: CardSettings(
                    children: <CardSettingsSection>[
                      CardSettingsSection(
                        header: CardSettingsHeader(
                            label: "SmartRace Verbindung", color: headerColor),
                        children: <CardSettingsWidget>[
                          CardSettingsInt(
                            label: "Port",
                            initialValue: port,
                            icon: const Icon(Icons.confirmation_num),
                            validator: (value) {
                              if (value == null || value.isNaN) {
                                return 'Valid port is required.';
                              }
                              return null;
                            },
                            onSaved: (value) => port = value!,
                          ),
                          CardSettingsSwitch(
                            label: "UseSSL",
                            initialValue: useSSL,
                            icon: const Icon(Icons.https),
                            onSaved: (newValue) => useSSL = newValue!,
                          ),
                        ],
                      ),
                      CardSettingsSection(
                        header: CardSettingsHeader(
                            label: "Spieleinstellungen", color: headerColor),
                        children: [
                          CardSettingsSlider(
                            label: "Zeit",
                            initialValue: 5,
                            min: 1,
                            max: 30,
                            divisions: 30,
                          ),
                          CardSettingsText(
                            label: "Zeit",
                            initialValue: "5:00",
                            inputMask: "00:00",
                            autovalidate: true,
                            autocorrect: true,
                            icon: const Icon(Icons.timelapse_outlined),
                            unitLabel: "Minuten",
                            autovalidateMode: AutovalidateMode.always,
                          )
                        ],
                      ),
                      CardSettingsSection(
                        header: CardSettingsHeader(
                          label: "Aktionen",
                          color: headerColor,
                        ),
                        children: [
                          CardSettingsButton(
                            label: "Speichern",
                            onPressed: () => {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text("Does not work yet")))
                            },
                          ),
                          CardSettingsButton(
                            label: "Server neu starten",
                            onPressed: () => {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text("Does not work yet")))
                            },
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SettingsTitle extends StatelessWidget {
  const SettingsTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(112, 113, 115, 0.4),
          borderRadius: BorderRadius.circular(16),
        ),
        child: const Column(
          children: [
            Center(
                child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Einstellungen",
                textScaler: TextScaler.linear(1.5),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
