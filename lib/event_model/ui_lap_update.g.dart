// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_lap_update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UiLapUpdate _$UiLapUpdateFromJson(Map<String, dynamic> json) => UiLapUpdate(
      ControllerData.fromJson(json['controller_data'] as Map<String, dynamic>),
      json['laptime'] as String,
      controllerId: json['controller_id'] as String,
    );

Map<String, dynamic> _$UiLapUpdateToJson(UiLapUpdate instance) =>
    <String, dynamic>{
      'controller_id': instance.controllerId,
      'controller_data': instance.controllerData.toJson(),
      'laptime': instance.laptime,
    };

ControllerData _$ControllerDataFromJson(Map<String, dynamic> json) =>
    ControllerData(
      colorBg: json['color_bg'] as String,
      colorText: json['color_text'] as String,
    );

Map<String, dynamic> _$ControllerDataToJson(ControllerData instance) =>
    <String, dynamic>{
      'color_bg': instance.colorBg,
      'color_text': instance.colorText,
    };
