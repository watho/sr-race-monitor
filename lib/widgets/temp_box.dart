import 'package:flutter/material.dart';

class TempBox extends StatelessWidget {
  const TempBox({super.key, required this.title, required this.flexValue});

  final String title;
  final int flexValue;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: flexValue,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: const Color.fromRGBO(112, 113, 115, 0.4),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(child: Text(title)),
        ),
      ),
    );
  }
}
