import 'package:json_annotation/json_annotation.dart';

part 'race_event.g.dart';

@JsonSerializable()
class RaceEvent {
  final String timestamp;
  final String? eventType;

  RaceEvent({
    required this.timestamp,
    this.eventType,
  });

  Map<String, dynamic> toJson() => _$RaceEventToJson(this);

  static RaceEvent fromJson(Map<String, dynamic> json) => _$RaceEventFromJson(json);
}