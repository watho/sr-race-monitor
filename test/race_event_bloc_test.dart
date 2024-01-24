import 'dart:convert';
import 'dart:io';

import 'package:bloc_test/bloc_test.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'package:smart_race_monitor/event_model/bloc/incoming_race_message_bloc.dart';
import 'package:smart_race_monitor/model/driver_model.dart';
import 'package:smart_race_monitor/service/i_smart_race_message_handler.dart';
import 'package:smart_race_monitor/service/injection.dart';
import 'package:smart_race_monitor/util/simple_bloc_observer.dart';

final GetIt getIt = GetIt.instance;

void main() {
  group('Test RaceEventBloc', () {
    Bloc.observer = SimpleBlocObserver();
    late IncomingRaceMessageBloc raceEventBloc;

    setUp(() {
      EquatableConfig.stringify = true;
      configureDependencies();
      SmartRaceMessageHandler handler = getIt<SmartRaceMessageHandler>();
    });

    tearDown(() async {
      await getIt.reset();
    });

    blocTest<IncomingRaceMessageBloc, IncomingRaceMessageState>(
        'emits [RaceEventEventChangeStatus]',
        build: () => getIt<IncomingRaceMessageBloc>(),
        act: (bloc) => _postTestData('event.change_status_1.json'),
        expect: () => [
              IncomingRaceMessageState.raceEventStatusChange(
                  RaceStatus.running, RaceStatus.ended)
            ]);

    blocTest<IncomingRaceMessageBloc, IncomingRaceMessageState>(
        'emits [RaceEventUiLapUpdate]',
        build: () => getIt<IncomingRaceMessageBloc>(),
        act: (bloc) => _postTestData('ui.lap_update_1.json'),
        expect: () => [
              IncomingRaceMessageState.raceUiLapUpdate("2", "0:10.608",
                  const Color.fromRGBO(254, 56, 39, 1.0), Colors.white),
              IncomingRaceMessageState.updateDriversList([
                const Driver(
                  id: 1,
                  name: "osc",
                  shortName: "os",
                  bgColor: Color.fromRGBO(254, 56, 39, 1),
                  textColor: Color.fromRGBO(255, 255, 255, 1),
                )
              ]),
            ]);
  });
}

Future<void> _postTestData(String testJsonFileName) async {
  var log = Logger(printer: PrettyPrinter());
  try {
    //var jsonObject = jsonDecode(<String, dynamic>jsonString);
    //log.e(jsonObject);
    final response = await http.post(Uri.parse("http://localhost:8085/api"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: File("${Directory.current.path}/test/json/$testJsonFileName")
            .readAsStringSync()
        // body: jsonEncode(<String, dynamic>{
        //   'time': 1684769957969,
        //   'event_type': 'event.change_status',
        //   'event_data': {
        //     'old': 'unknown',
        //     'new': 'running',
        //   }
        // }),
        );

    if (response.statusCode == 200) {
      // Successful POST request, handle the response here
      final responseData = jsonDecode(response.body);
    } else {
      // If the server returns an error response, throw an exception
      throw Exception('Failed to post data. Statuscode ${response.statusCode}');
    }
  } catch (e) {
    log.e("Error sending test request $e", error: e);
  }
}
