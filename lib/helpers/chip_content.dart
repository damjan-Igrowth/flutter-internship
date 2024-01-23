import 'package:flutter/material.dart';
import 'package:flutter_internship/helpers/spacer_width.dart';
import 'package:flutter_internship/widgets/components/chip_component.dart';

class ChipContent extends StatelessWidget {
  final String label;
  final IconData? icon;
  final Color textColor;
  final Color iconColor;
  final double iconSize;
  final ChipType? chipType;

  const ChipContent({
    super.key,
    required this.label,
    this.icon,
    required this.textColor,
    required this.iconColor,
    required this.iconSize,
    this.chipType,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          label,
          style: TextStyle(
            color: textColor,
            fontSize: 14,
            fontWeight:
                chipType == ChipType.flat ? FontWeight.w600 : FontWeight.w500,
          ),
        ),
        if (icon != null) const SpacerWidth(),
        if (icon != null)
          Icon(
            icon,
            color: iconColor,
            size: iconSize,
          )
      ],
    );
  }
}
