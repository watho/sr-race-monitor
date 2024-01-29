import 'package:flutter/material.dart';
import 'package:smart_race_monitor/util/routing/router.dart';
import 'package:smart_race_monitor/util/ui/drawer.dart';
import 'package:smart_race_monitor/util/ui/responsive_layout.dart';
import 'package:smart_race_monitor/views/about/presentation/ui/about_desktop.dart';
import 'package:smart_race_monitor/views/about/presentation/ui/about_mobile.dart';

import 'about_tablet.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    AppDrawer drawer = AppDrawer(
      selectedRoute: AboutRoute().location,
    );
    return ResponsiveLayout(
      mobileBody: AboutMobile(
        drawer: drawer,
      ),
      tabletBody: AboutTablet(drawer: drawer),
      desktopBody: AboutDesktop(drawer: drawer),
    );
  }
}
