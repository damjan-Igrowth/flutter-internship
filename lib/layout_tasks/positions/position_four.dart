import 'package:flutter/material.dart';
import 'package:flutter_internship/layout_tasks/shapes/square.dart';
import 'package:flutter_internship/layout_tasks/shapes/circle.dart';
import 'dart:math';

class PositionFour extends StatelessWidget {
  const PositionFour({super.key});

  @override
  Widget build(BuildContext context) {
    const double bigSize = 248;
    return Square(
      size: bigSize,
      color: Colors.blue,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Transform.rotate(
            angle: 45 * (pi / 180),
            child: const Square(
              color: Colors.purple,
              size: bigSize / sqrt2,
            ),
          ),
          const Align(
            alignment: Alignment.topLeft,
            child: Circle(
              color: Colors.purple,
              radius: 28,
            ),
          ),
          const Align(
            alignment: Alignment.topRight,
            child: Circle(
              color: Colors.purple,
              radius: 28,
            ),
          ),
          const Align(
            alignment: Alignment.bottomLeft,
            child: Circle(
              color: Colors.purple,
              radius: 28,
            ),
          ),
          const Align(
            alignment: Alignment.bottomRight,
            child: Circle(
              color: Colors.purple,
              radius: 28,
            ),
          ),
        ],
      ),
    );
  }
}
