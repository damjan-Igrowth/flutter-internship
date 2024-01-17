import 'package:flutter/material.dart';

class Square extends StatelessWidget {
  final double size;
  final Color color;

  const Square({super.key, required this.size, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: color,
      ),
    );
  }
}
