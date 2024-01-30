import 'package:flutter/material.dart';
import 'package:smart_race_monitor/util/routing/drawer.dart';
import 'package:smart_race_monitor/util/routing/responsive_layout.dart';
import 'package:smart_race_monitor/util/routing/router.dart';
import 'package:smart_race_monitor/views/home/presentation/ui/layout/home_desktop.dart';
import 'package:smart_race_monitor/views/home/presentation/ui/layout/home_mobile.dart';
import 'package:smart_race_monitor/views/home/presentation/ui/layout/home_tablet.dart';

class HomeSkeleton extends StatelessWidget {
  const HomeSkeleton({super.key});

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
