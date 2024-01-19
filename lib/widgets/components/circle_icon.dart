import 'package:flutter/material.dart';

class CircleIconClass extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final double containerSize;
  final Color backgroundColor;
  final Color iconColor;

  const CircleIconClass({
    super.key,
    required this.icon,
    required this.iconSize,
    required this.containerSize,
    required this.backgroundColor,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: containerSize,
      height: containerSize,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor,
      ),
      child: Center(
        child: Icon(
          icon,
          size: iconSize,
          color: iconColor,
        ),
      ),
    );
  }
}
