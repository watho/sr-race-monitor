// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'race_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RaceEvent _$RaceEventFromJson(Map<String, dynamic> json) => RaceEvent(
      time: json['time'] as int,
      eventType: json['event_type'] as String?,
      eventData: json['event_data'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$RaceEventToJson(RaceEvent instance) => <String, dynamic>{
      'time': instance.time,
      'event_type': instance.eventType,
      'event_data': instance.eventData,
    };
