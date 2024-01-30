import 'package:flutter/material.dart';

class HelpBox extends StatelessWidget {
  final String helpText;

  const HelpBox(this.helpText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.orangeAccent.shade100,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            helpText,
            style: Theme.of(context).textTheme.labelSmall,
          ),
        ),
      ),
    );
  }
}
