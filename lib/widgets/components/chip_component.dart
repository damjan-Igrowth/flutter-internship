import 'package:flutter/material.dart';

class ChipComponentClass extends StatelessWidget {
  final Color color;
  final Widget label;

  const ChipComponentClass({
    super.key,
    required this.color,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: color,
      label: label,
    );
  }
}
