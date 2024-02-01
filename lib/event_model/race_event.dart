import 'package:json_annotation/json_annotation.dart';

part 'race_event.g.dart';

@JsonSerializable()
class RaceEvent {
  final int time;

  @JsonKey(name: 'event_type')
  final String? eventType;

  @JsonKey(name: 'event_data')
  final Map<String, dynamic> eventData;

  RaceEvent({required this.time, this.eventType, required this.eventData});

  Map<String, dynamic> toJson() => _$RaceEventToJson(this);

  static RaceEvent fromJson(Map<String, dynamic> json) =>
      _$RaceEventFromJson(json);
}
