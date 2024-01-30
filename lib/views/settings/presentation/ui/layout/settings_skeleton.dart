import 'package:flutter/material.dart';
import 'package:smart_race_monitor/util/routing/drawer.dart';
import 'package:smart_race_monitor/util/routing/responsive_layout.dart';
import 'package:smart_race_monitor/util/routing/router.dart';
import 'package:smart_race_monitor/views/settings/presentation/ui/layout/settings_desktop.dart';
import 'package:smart_race_monitor/views/settings/presentation/ui/layout/settings_mobile.dart';
import 'package:smart_race_monitor/views/settings/presentation/ui/layout/settings_tablet.dart';

class SettingsSkeleton extends StatelessWidget {
  const SettingsSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    AppDrawer drawer = AppDrawer(
      selectedRoute: SettingsRoute().location,
    );
    return ResponsiveLayout(
      mobileBody: SettingsMobile(
        drawer: drawer,
      ),
      tabletBody: SettingsTablet(drawer: drawer),
      desktopBody: SettingsDesktop(drawer: drawer),
    );
  }
}
