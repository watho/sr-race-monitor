// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'race_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RaceEvent _$RaceEventFromJson(Map<String, dynamic> json) => RaceEvent(
      timestamp: json['timestamp'] as String,
      eventType: json['eventType'] as String?,
    );

Map<String, dynamic> _$RaceEventToJson(RaceEvent instance) => <String, dynamic>{
      'timestamp': instance.timestamp,
      'eventType': instance.eventType,
    };
