import 'package:flutter/material.dart';
import 'package:flutter_internship/widgets/shapes/square.dart';
import 'dart:math' as math;

class PositionThree extends StatelessWidget {
  const PositionThree({super.key});

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
          const FractionallySizedBox(widthFactor: 0.5, heightFactor: 0.5),
        ],
      ),
    );
  }
}
