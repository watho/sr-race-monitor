import 'package:json_annotation/json_annotation.dart';

part 'ui_lap_update.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class UiLapUpdate {
  // @JsonKey(name: 'old')
  final String controllerId;
  final String laptime;
  final int lap;
  final ControllerData controllerData;
  final DriverData driverData;

  UiLapUpdate(
      {required this.controllerData,
      required this.laptime,
      required this.lap,
      required this.controllerId,
      required this.driverData});

  Map<String, dynamic> toJson() => _$UiLapUpdateToJson(this);

  static UiLapUpdate fromJson(Map<String, dynamic> json) =>
      _$UiLapUpdateFromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ControllerData {
  final String colorBg;
  final String colorText;

  ControllerData({required this.colorBg, required this.colorText});

  Map<String, dynamic> toJson() => _$ControllerDataToJson(this);

  static ControllerData fromJson(Map<String, dynamic> json) =>
      _$ControllerDataFromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class DriverData {
  final int id;
  final String name;
  final String nameShort;

  DriverData({required this.id, required this.name, required this.nameShort});

  Map<String, dynamic> toJson() => _$DriverDataToJson(this);

  static DriverData fromJson(Map<String, dynamic> json) =>
      _$DriverDataFromJson(json);
}
