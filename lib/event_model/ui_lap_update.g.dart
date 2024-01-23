// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_lap_update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UiLapUpdate _$UiLapUpdateFromJson(Map<String, dynamic> json) => UiLapUpdate(
      controllerData: ControllerData.fromJson(
          json['controller_data'] as Map<String, dynamic>),
      laptime: json['laptime'] as String,
      controllerId: json['controller_id'] as String,
      driverData:
          DriverData.fromJson(json['driver_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UiLapUpdateToJson(UiLapUpdate instance) =>
    <String, dynamic>{
      'controller_id': instance.controllerId,
      'laptime': instance.laptime,
      'controller_data': instance.controllerData.toJson(),
      'driver_data': instance.driverData.toJson(),
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

DriverData _$DriverDataFromJson(Map<String, dynamic> json) => DriverData(
      id: json['id'] as int,
      name: json['name'] as String,
      nameShort: json['name_short'] as String,
    );

Map<String, dynamic> _$DriverDataToJson(DriverData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'name_short': instance.nameShort,
    };
