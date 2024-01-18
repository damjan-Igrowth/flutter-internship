import 'package:flutter/material.dart';
import 'package:flutter_internship/widgets/shapes/square.dart';
import 'package:flutter_internship/widgets/shapes/circle.dart';
import 'dart:math' as math;

class PositionFour extends StatelessWidget {
  const PositionFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Square(
      size: 248,
      color: Colors.blue,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Transform.rotate(
            angle: 45 * (math.pi / 180),
            child: const Square(
              color: Colors.purple,
              size: 176,
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
