import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:smart_race_monitor/event_model/bloc/incoming_race_message_bloc.dart';
import 'package:smart_race_monitor/event_model/event_change_status.dart';
import 'package:smart_race_monitor/ui/race_state_table.dart';
import 'package:smart_race_monitor/util/simple_bloc_observer.dart';

void main() {
  group('Test home view', () {
    Bloc.observer = SimpleBlocObserver();
    testWidgets('Test RaceStatusTable', (WidgetTester tester) async {
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
      expect(
          find.byWidgetPredicate((Widget widget) =>
              widget is Container && widget.color == Colors.grey),
          findsOneWidget);
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
      expect(
          find.byWidgetPredicate((Widget widget) =>
              widget is Container && widget.color == Colors.green),
          findsOneWidget);
      expect(
          find.byWidgetPredicate((Widget widget) =>
              widget is Container && widget.color == Colors.grey),
          findsNothing);
    });
  });
}
