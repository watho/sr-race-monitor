import 'package:flutter/material.dart';
import 'package:smart_race_monitor/views/about/presentation/ui/about_page.dart';

class AboutTablet extends StatelessWidget {
  const AboutTablet({super.key, required this.drawer});

  final Widget drawer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: [drawer, const AboutPage()]),
    );
  }
}
