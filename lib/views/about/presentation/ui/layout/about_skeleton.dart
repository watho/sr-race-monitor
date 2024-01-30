import 'package:flutter/material.dart';
import 'package:smart_race_monitor/util/routing/drawer.dart';
import 'package:smart_race_monitor/util/routing/responsive_layout.dart';
import 'package:smart_race_monitor/util/routing/router.dart';
import 'package:smart_race_monitor/views/about/presentation/ui/layout/about_desktop.dart';
import 'package:smart_race_monitor/views/about/presentation/ui/layout/about_mobile.dart';

import 'about_tablet.dart';

class AboutSkeleton extends StatelessWidget {
  const AboutSkeleton({super.key});

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
