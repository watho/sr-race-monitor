import 'package:flutter/material.dart';
import 'package:smart_race_monitor/util/routing/router.dart';
import 'package:smart_race_monitor/util/ui/drawer.dart';
import 'package:smart_race_monitor/util/ui/responsive_layout.dart';
import 'package:smart_race_monitor/views/home/presentation/ui/layout/home_desktop.dart';
import 'package:smart_race_monitor/views/home/presentation/ui/layout/home_mobile.dart';
import 'package:smart_race_monitor/views/home/presentation/ui/layout/home_tablet.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    AppDrawer drawer = AppDrawer(
      selectedRoute: HomeScreenRoute().location,
    );
    return ResponsiveLayout(
      mobileBody: HomeMobile(
        drawer: drawer,
      ),
      tabletBody: HomeTablet(drawer: drawer),
      desktopBody: HomeDesktop(drawer: drawer),
    );
  }
}
