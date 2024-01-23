import 'dart:convert';
import 'dart:io';

import 'package:bloc_test/bloc_test.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'package:smart_race_monitor/event_model/bloc/race_event_bloc.dart';
import 'package:smart_race_monitor/util/simple_bloc_observer.dart';

void main() {
  group('Test RaceEventBloc', () {
    Bloc.observer = SimpleBlocObserver();
    late RaceEventBloc raceEventBloc;

    setUp(() {
      EquatableConfig.stringify = true;
      raceEventBloc = RaceEventBloc();
    });

    tearDown(() {
      //raceEventBloc.close();
    });

    blocTest<RaceEventBloc, RaceEventBlocState>(
        'emits [RaceEventEventChangeStatus]',
        build: () => raceEventBloc,
        act: (bloc) => _postTestData('event.change_status_1.json'),
        expect: () => [
              const RaceEventEventChangeStatus(
                  RaceStatus.running, RaceStatus.ended)
            ]);

    blocTest<RaceEventBloc, RaceEventBlocState>('emits [RaceEventUiLapUpdate]',
        build: () => raceEventBloc,
        act: (bloc) => _postTestData('ui.lap_update_1.json'),
        expect: () => [const RaceEventUiLapUpdate()]);
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
