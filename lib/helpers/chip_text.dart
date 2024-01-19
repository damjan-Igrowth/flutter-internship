import 'package:flutter/material.dart';

class ChipText extends StatelessWidget {
  final String text;

  const ChipText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 14),
    );
  }
}
