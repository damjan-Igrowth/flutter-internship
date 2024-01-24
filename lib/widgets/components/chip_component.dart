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
    return switch (chipType) {
      ChipType.flat => FlatChip(label: label, icon: icon),
      ChipType.clean => CleanChip(label: label, icon: icon)
    };
  }
}

//sivi chip
class FlatChip extends StatelessWidget {
  final String label;
  final IconData? icon;

  const FlatChip({
    super.key,
    required this.label,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      label: _ChipContent(
        chipType: ChipType.flat,
        label: label,
        icon: icon,
        textColor: const Color(0xFF7B828A),
        iconColor: const Color(0xFF7B828A),
        iconSize: 20,
      ),
      backgroundColor: const Color(0xFFEBEBEB),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      side: BorderSide.none,
    );
  }
}

//beli chip
class CleanChip extends StatelessWidget {
  final String label;
  final IconData? icon;

  const CleanChip({
    super.key,
    required this.label,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0Xffffffff),
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: Color(0x1A000000),
            offset: Offset(0, 2),
            blurRadius: 12,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Chip(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        label: _ChipContent(
          chipType: ChipType.clean,
          label: label,
          icon: icon,
          textColor: const Color(0xFF111111),
          iconColor: const Color(0xFFEE2636),
          iconSize: 8,
        ),
        backgroundColor: const Color(0Xffffffff),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        side: BorderSide.none,
      ),
    );
  }
}

class _ChipContent extends StatelessWidget {
  final String label;
  final IconData? icon;
  final Color textColor;
  final Color iconColor;
  final double iconSize;
  final ChipType? chipType;

  const _ChipContent({
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
            fontFamily: 'Inter',
            fontStyle: FontStyle.normal,
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
