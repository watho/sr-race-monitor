import 'package:flutter/material.dart';
import 'package:smart_race_monitor/views/home/presentation/ui/home_desktop.dart';
import 'package:smart_race_monitor/util/drawer.dart';
import 'package:smart_race_monitor/views/home/presentation/ui/home_mobile.dart';
import 'package:smart_race_monitor/views/home/presentation/ui/home_tablet.dart';
import 'package:smart_race_monitor/util/responsive_layout.dart';
import 'package:smart_race_monitor/util/routing/router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeDrawer drawer = HomeDrawer(
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
