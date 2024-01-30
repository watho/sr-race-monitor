import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_race_monitor/views/about/presentation/ui/layout/about_skeleton.dart';
import 'package:smart_race_monitor/views/game/presentation/ui/layout/game_skeleton.dart';
import 'package:smart_race_monitor/views/home/presentation/ui/layout/home_skeleton.dart';
import 'package:smart_race_monitor/views/settings/presentation/ui/layout/settings_skeleton.dart';

part 'router.g.dart';

@TypedGoRoute<HomeScreenRoute>(
  path: "/home",
)
@immutable
class HomeScreenRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomeSkeleton();
  }
}

@TypedGoRoute<GameRoute>(
  path: "/",
)
@immutable
class GameRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const GameSkeleton();
  }
}

@TypedGoRoute<SettingsRoute>(
  path: "/settings",
)
@immutable
class SettingsRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SettingsSkeleton();
  }
}

@TypedGoRoute<AboutRoute>(
  path: "/about",
)
@immutable
class AboutRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AboutSkeleton();
  }
}
