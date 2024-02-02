import 'package:flutter/material.dart';

class Rectangle extends StatelessWidget {
  final double? width;
  final double height;
  final Color color;

  const Rectangle(
      {super.key, this.width, required this.height, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: color,
      ),
    );
  }
}
