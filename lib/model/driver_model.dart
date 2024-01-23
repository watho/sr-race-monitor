import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

final class Driver extends Equatable {
  final int id;
  final String name;
  final String shortName;
  final Color bgColor;
  final Color textColor;

  const Driver(
      {required this.id,
      required this.name,
      required this.shortName,
      required this.bgColor,
      required this.textColor});

  @override
  // TODO: implement props
  List<Object?> get props => [id, name, shortName, bgColor, textColor];
}
