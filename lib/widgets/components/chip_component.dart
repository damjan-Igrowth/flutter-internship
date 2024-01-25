import 'package:flutter/material.dart';
import 'package:flutter_internship/helpers/spacer_width.dart';

enum ChipType { flat, clean }

class ChipComponent extends StatelessWidget {
  final ChipType chipType;
  final IconData? icon;
  final String label;

  const ChipComponent({
    super.key,
    required this.chipType,
    this.icon,
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
