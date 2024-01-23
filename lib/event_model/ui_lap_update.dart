import 'package:json_annotation/json_annotation.dart';

part 'ui_lap_update.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class UiLapUpdate {
  // @JsonKey(name: 'old')
  final String controllerId;
  final ControllerData controllerData;
  final String laptime;

  UiLapUpdate(this.controllerData, this.laptime, {required this.controllerId});

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
