import 'dart:convert';

import 'package:bloc_test/bloc_test.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger/logger.dart';
import 'package:smart_race_monitor/event_model/bloc/race_event_bloc.dart';
import 'package:smart_race_monitor/util/simple_bloc_observer.dart';
import 'package:http/http.dart' as http;

void main() {
  group('Test RaceEventBloc', () {
    Bloc.observer = SimpleBlocObserver();
    late RaceEventBloc raceEventBloc;

    setUp(() {
      EquatableConfig.stringify = true;
      raceEventBloc = RaceEventBloc();
    });

    blocTest<RaceEventBloc, RaceEventBlocState>(
        'emits [RaceEventEventChangeStatus]',
        build: () => raceEventBloc,
        act: (bloc) => _postTestData(),
        expect: () => [
              const RaceEventEventChangeStatus(
                  RaceStatus.unknown, RaceStatus.running)
            ]);

    tearDown(() {
      raceEventBloc.close();
    });
  });
}

Future<void> _postTestData() async {
  var log = Logger(printer: PrettyPrinter());
  try {
    final response = await http.post(
      Uri.parse("http://localhost:8085/api"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{
        'time': 1684769957969,
        'event_type': 'event.change_status',
        'event_data': {'old': 'unknown', 'new': 'running'}
      }),
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
