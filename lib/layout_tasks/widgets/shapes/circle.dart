import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
  final double radius;
  final Color color;

  const Circle({super.key, required this.radius, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius * 2,
      height: radius * 2,
      child: ClipOval(
        child: Container(
          color: color,
        ),
      ),
    );
  }
}
