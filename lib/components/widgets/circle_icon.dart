import 'package:flutter/material.dart';

class CircleIcon extends StatelessWidget {
  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;

  const CircleIcon.success({super.key})
      : icon = Icons.check_circle_outline_rounded,
        backgroundColor = const Color(0xFFD1FADF),
        iconColor = const Color(0xFF18B815);
  const CircleIcon.warning({super.key})
      : icon = Icons.error,
        backgroundColor = const Color(0xFFFAEAD1),
        iconColor = const Color(0xFFFFA218);

  const CircleIcon.error({super.key})
      : icon = Icons.cancel,
        backgroundColor = const Color(0xFFFAD1D1),
        iconColor = const Color(0xFFDA0000);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor,
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Icon(
            icon,
            size: 24,
            color: iconColor,
          ),
        ),
      ),
    );
  }
}
