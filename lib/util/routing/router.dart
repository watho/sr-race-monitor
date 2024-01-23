import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_race_monitor/util/drawer.dart';
import 'package:smart_race_monitor/views/about/presentation/ui/about_page.dart';
import 'package:smart_race_monitor/views/game/presentation/ui/game_page.dart';
import 'package:smart_race_monitor/views/home/presentation/ui/home_page.dart';

part 'router.g.dart';

@TypedGoRoute<HomeScreenRoute>(
  path: "/",
)
@immutable
class HomeScreenRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }
}

@TypedGoRoute<GameRoute>(
  path: "/game",
)
@immutable
class GameRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const GamePage();
  }
}

@TypedGoRoute<AboutRoute>(
  path: "/about",
)
@immutable
class AboutRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return AboutPage(
        drawer: HomeDrawer(
      selectedRoute: AboutRoute().location,
    ));
  }
}
