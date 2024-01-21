import 'package:json_annotation/json_annotation.dart';

part 'event_change_status.g.dart';

@JsonSerializable()
class EventChangeStatus {
  @JsonKey(name: 'old')
  final String oldState;

  @JsonKey(name: 'new')
  final String newState;


  EventChangeStatus({
    required this.oldState,
    required this.newState
  });

  Map<String, dynamic> toJson() => _$EventChangeStatusToJson(this);

  static EventChangeStatus fromJson(Map<String, dynamic> json) => _$EventChangeStatusFromJson(json);
}