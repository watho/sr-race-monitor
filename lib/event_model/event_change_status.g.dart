// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_change_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventChangeStatus _$EventChangeStatusFromJson(Map<String, dynamic> json) =>
    EventChangeStatus(
      oldState: json['old'] as String,
      newState: json['new'] as String,
    );

Map<String, dynamic> _$EventChangeStatusToJson(EventChangeStatus instance) =>
    <String, dynamic>{
      'old': instance.oldState,
      'new': instance.newState,
    };
