import 'package:flutter/material.dart';
import 'package:smart_race_monitor/main.dart';
import 'package:smart_race_monitor/util/routing/router.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key, required this.selectedRoute});

  final String selectedRoute;

  @override
  Widget build(BuildContext context) {
    var tilePadding = const EdgeInsets.only(left: 8.0, right: 8, top: 8);

    return Drawer(
      width: 200,
      child: Column(
        children: [
          DrawerHeader(
            child: Image.asset(
              'assets/icon.png',
              semanticLabel: "Logo",
              height: 300,
              width: 300,
            ),
          ),
          Padding(
            padding: tilePadding,
            child: InkWell(
              onTap: () => HomeScreenRoute().go(context),
              child: ListTile(
                selected: selectedRoute == HomeScreenRoute().location,
                leading: const Icon(Icons.home),
                title: const Text(
                  'Home',
                ),
              ),
            ),
          ),
          Padding(
            padding: tilePadding,
            child: InkWell(
              onTap: () => GameRoute().go(context),
              child: ListTile(
                selected: selectedRoute == GameRoute().location,
                leading: const Icon(Icons.gamepad),
                title: const Text(
                  'Game',
                ),
              ),
            ),
          ),
          // Padding(
          //   padding: tilePadding,
          //   child: InkWell(
          //     onTap: () => SettingsRoute().go(context),
          //     child: ListTile(
          //       selected: selectedRoute == SettingsRoute().location,
          //       leading: const Icon(Icons.settings),
          //       title: const Text(
          //         'Einstellungen',
          //       ),
          //     ),
          //   ),
          // ),
          Padding(
            padding: tilePadding,
            child: InkWell(
              onTap: () => AboutRoute().go(context),
              child: ListTile(
                selected: selectedRoute == AboutRoute().location,
                leading: const Icon(Icons.info),
                title: const Text(
                  'Über',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
