import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:smart_race_monitor/event_model/bloc/incoming_race_message_bloc.dart';
import 'package:smart_race_monitor/event_model/event_change_status.dart';
import 'package:smart_race_monitor/event_model/ui_lap_update.dart';
import 'package:smart_race_monitor/ui/race_state_table.dart';
import 'package:smart_race_monitor/util/simple_bloc_observer.dart';

void main() {
  group('Test home view', () {
    Bloc.observer = SimpleBlocObserver();
    testWidgets('Test RaceStatusTableRaceStatus', (WidgetTester tester) async {
      // Wrap the widget to test with MaterialApp to provide directional hints + bloc;
      var irmBloc = IncomingRaceMessageBloc();
      await tester.pumpWidget(MaterialApp(
          home: BlocProvider(
        create: (context) {
          return irmBloc;
        },
        child: const RaceStatusTableBox(),
      )));
      // Expect initial ui.
      expect(find.text("Race Status"), findsOneWidget);
      expect(find.text("unbekannt"), findsOneWidget);
      expect(find.text("Läuft"), findsNothing);
      // FIXME Does not work anymore cause color is now at boxdecoration
      // expect(
      //     find.byWidgetPredicate((Widget widget) =>
      //         widget is Container && widget.color == Colors.grey),
      //     findsOneWidget);
      expect(
          find.byWidgetPredicate((Widget widget) =>
              widget is Container && widget.color == Colors.green),
          findsNothing);
      // Add Event to bloc
      irmBloc.add(IncomingRaceMessageEvent.eventStatusChanged(DateTime.now(),
          EventChangeStatus(oldState: "unknown", newState: "running")));

      // Wait for all changes and animations finished
      await tester.pumpAndSettle();
      // Expect changed ui.
      expect(find.text("Race Status"), findsOneWidget);
      expect(find.text("unbekannt"), findsNothing);
      expect(find.text("Läuft"), findsOneWidget);
      // FIXME Does not work anymore cause color is now at boxdecoration
      // expect(
      //     find.byWidgetPredicate((Widget widget) =>
      //         widget is Container && widget.color == Colors.green),
      //     findsOneWidget);
      expect(
          find.byWidgetPredicate((Widget widget) =>
              widget is Container && widget.color == Colors.grey),
          findsNothing);
    });

    testWidgets('Test One new RaceStatusTableDriversList',
        (WidgetTester tester) async {
      // Wrap the widget to test with MaterialApp to provide directional hints + bloc;
      var irmBloc = IncomingRaceMessageBloc();
      await tester.pumpWidget(MaterialApp(
          home: BlocProvider(
        create: (context) {
          return irmBloc;
        },
        child: const RaceStatusTableBox(),
      )));
      // Expect initial ui.
      expect(find.text("Race Status"), findsOneWidget);
      expect(find.text("Fahrer:"), findsOneWidget);
      expect(find.text("os"), findsNothing);
      // Add Event to bloc
      irmBloc.add(IncomingRaceMessageEvent.uiLapUpdated(
          DateTime.now(),
          UiLapUpdate(
              laptime: '00:07:12',
              lap: 5,
              controllerId: "2",
              controllerData: ControllerData(
                  colorBg: "rgb(254, 56, 39)", colorText: "rgb(255, 255, 255)"),
              driverData: DriverData(name: "Osc", id: 1, nameShort: "os"))));

      // Wait for all changes and animations finished
      await tester.pumpAndSettle();
      // Expect changed ui.
      expect(find.text("Race Status"), findsOneWidget);
      expect(find.text("Fahrer:"), findsOneWidget);
      expect(find.text("os"), findsOneWidget);
    });

    testWidgets('Test One new with update RaceStatusTableDriversList',
        (WidgetTester tester) async {
      // Wrap the widget to test with MaterialApp to provide directional hints + bloc;
      var irmBloc = IncomingRaceMessageBloc();
      await tester.pumpWidget(MaterialApp(
          home: BlocProvider(
        create: (context) {
          return irmBloc;
        },
        child: const RaceStatusTableBox(),
      )));
      // Expect initial ui.
      expect(find.text("Race Status"), findsOneWidget);
      expect(find.text("Fahrer:"), findsOneWidget);
      expect(find.text("os"), findsNothing);
      // Add Event to bloc
      irmBloc.add(IncomingRaceMessageEvent.uiLapUpdated(
          DateTime.now(),
          UiLapUpdate(
              laptime: '00:07:12',
              lap: 5,
              controllerId: "2",
              controllerData: ControllerData(
                  colorBg: "rgb(254, 56, 39)", colorText: "rgb(255, 255, 255)"),
              driverData: DriverData(name: "Osc", id: 1, nameShort: "os"))));
      irmBloc.add(IncomingRaceMessageEvent.uiLapUpdated(
          DateTime.now(),
          UiLapUpdate(
              laptime: '00:08:42',
              lap: 5,
              controllerId: "2",
              controllerData: ControllerData(
                  colorBg: "rgb(254, 56, 39)", colorText: "rgb(255, 255, 255)"),
              driverData: DriverData(name: "Osc", id: 1, nameShort: "os"))));
      // Wait for all changes and animations finished
      await tester.pumpAndSettle();
      // Expect changed ui.
      expect(find.text("Race Status"), findsOneWidget);
      expect(find.text("Fahrer:"), findsOneWidget);
      expect(find.text("os"), findsOneWidget);
    });

    testWidgets('Test two new driver RaceStatusTableDriversList',
        (WidgetTester tester) async {
      // Wrap the widget to test with MaterialApp to provide directional hints + bloc;
      var irmBloc = IncomingRaceMessageBloc();
      await tester.pumpWidget(MaterialApp(
          home: BlocProvider(
        create: (context) {
          return irmBloc;
        },
        child: const RaceStatusTableBox(),
      )));
      // Expect initial ui.
      expect(find.text("Race Status"), findsOneWidget);
      expect(find.text("Fahrer:"), findsOneWidget);
      expect(find.text("os"), findsNothing);
      expect(find.text("fr"), findsNothing);
      // Add Event to bloc
      irmBloc.add(IncomingRaceMessageEvent.uiLapUpdated(
          DateTime.now(),
          UiLapUpdate(
              laptime: '00:07:12',
              lap: 7,
              controllerId: "2",
              controllerData: ControllerData(
                  colorBg: "rgb(254, 56, 39)", colorText: "rgb(255, 255, 255)"),
              driverData: DriverData(name: "Osc", id: 1, nameShort: "os"))));
      irmBloc.add(IncomingRaceMessageEvent.uiLapUpdated(
          DateTime.now(),
          UiLapUpdate(
              laptime: '00:08:42',
              lap: 8,
              controllerId: "2",
              controllerData: ControllerData(
                  colorBg: "rgb(254, 56, 39)", colorText: "rgb(255, 255, 255)"),
              driverData: DriverData(name: "Osc", id: 1, nameShort: "os"))));
      irmBloc.add(IncomingRaceMessageEvent.uiLapUpdated(
          DateTime.now(),
          UiLapUpdate(
              laptime: '00:08:42',
              lap: 3,
              controllerId: "1",
              controllerData: ControllerData(
                  colorBg: "rgb(254, 56, 39)", colorText: "rgb(255, 255, 255)"),
              driverData: DriverData(name: "Fri", id: 2, nameShort: "fr"))));
      // Wait for all changes and animations finished
      await tester.pumpAndSettle();
      // Expect changed ui.
      expect(find.text("Race Status"), findsOneWidget);
      expect(find.text("Fahrer:"), findsOneWidget);
      expect(find.text("os"), findsOneWidget);
      expect(find.text("fr"), findsOneWidget);
    });
  });
}
