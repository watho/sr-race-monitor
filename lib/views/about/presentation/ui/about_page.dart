import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "SR Race Monitor",
          textScaler: TextScaler.linear(3),
        ),
        const Text(
          "2024",
          textScaler: TextScaler.linear(1.5),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.orangeAccent.shade100,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                          """Diese App empfängt Nachrichten von der SmartRace-Anwendung für Carrerarennbahnen.
            Die App benutzt ein zahlungspflichtiges Plugin. Wenn du keine Carrerabahn hast oder die SmartRaceAnwendung nicht benutzt oder für die Datenschnittstelle nicht bezahlen willst, kannst du mit dieser Anwendung nichts anfangen.
            Bei Fragen und Problemen findet man mich im Discord von SmartRace und hier:""",
                          textAlign: TextAlign.center)),
                  InkWell(
                    child: const Text(
                      "SR Race Monitor auf Github",
                      style: TextStyle(color: Colors.blueGrey),
                    ),
                    onTap: () => launchUrl(Uri.parse("https://github.com/")),
                  ),
                  InkWell(
                    child: const Text(
                      "Eintrag im FreeSlotter-Forum",
                      style: TextStyle(color: Colors.blueGrey),
                    ),
                    onTap: () => launchUrl(Uri.parse("https://github.com/")),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.orangeAccent.shade100,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const Text(
                    """Ich stehe in keiner Verbindung zu SmartRace und verdiene hiermit kein Geld.
                    Ich bin nur ein Programmierer, der Spaß daran hat, die Möglichkeiten der Datenschnittstelle zu erkunden und das Ergebnis frei zur Verfügung stellt.
                    Alle Informationen zur SmartRace-App und deren Einrichtung findest du hier:""",
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: InkWell(
                      child: const Text(
                        "smartrace.de",
                        style: TextStyle(color: Colors.blueGrey),
                      ),
                      onTap: () =>
                          launchUrl(Uri.parse("https://www.smartrace.de/")),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
