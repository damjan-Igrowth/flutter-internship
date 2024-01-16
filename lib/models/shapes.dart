import 'package:flutter/material.dart';

class Square extends StatelessWidget {
  final double size;
  final Color color;

  const Square({required this.size, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: color,
      ),
    );
  }
}

class Rectangle extends StatelessWidget {
  final double width;
  final double height;
  final Color color;

  const Rectangle(
      {required this.width, required this.height, required this.color});

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
