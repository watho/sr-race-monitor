import 'package:flutter/material.dart';
import 'package:smart_race_monitor/util/routing/router.dart';
import 'package:smart_race_monitor/util/ui/drawer.dart';
import 'package:smart_race_monitor/util/ui/responsive_layout.dart';
import 'package:smart_race_monitor/views/settings/presentation/ui/layout/settings_desktop.dart';
import 'package:smart_race_monitor/views/settings/presentation/ui/layout/settings_mobile.dart';
import 'package:smart_race_monitor/views/settings/presentation/ui/layout/settings_tablet.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

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
