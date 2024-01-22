import 'package:flutter/material.dart';
import 'package:flutter_internship/helpers/spacer_width.dart';

enum ChipType { Flat, Clean }

class ChipComponent extends StatelessWidget {
  final ChipType chipType;
  final IconData? icon;
  final String label;

  const ChipComponent({
    Key? key,
    required this.chipType,
    this.icon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (chipType) {
      case ChipType.Flat:
        return FlatChip(label: label, icon: icon);
      case ChipType.Clean:
        return CleanChip(label: label, icon: icon);
    }
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
      label: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          child: Row(
            children: [
              Text(
                label,
                style: const TextStyle(
                  color: Color(0xFF7B828A),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              if (icon != null) const SpacerWidth(),
              if (icon != null)
                Icon(
                  icon,
                  color: const Color(0xFF7B828A),
                  size: 20,
                )
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0xFFEBEBEB),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide.none,
      ),
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
    return Chip(
      label: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          child: Row(
            children: [
              Text(
                label,
                style: const TextStyle(
                  color: Color(0xFF111111),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              if (icon != null) const SpacerWidth(),
              if (icon != null)
                Icon(
                  icon,
                  color: const Color(0xFFEE2636),
                  size: 8,
                ),
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0Xffffffff),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide.none,
      ),
    );
  }
}
