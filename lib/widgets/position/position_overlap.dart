import 'package:flutter/material.dart';
import 'package:flutter_internship/widgets/shapes/square.dart';

class PositionOverlap extends StatelessWidget {
  const PositionOverlap({super.key});

  @override
  Widget build(BuildContext context) {
    return const Square(
      size: 288,
      color: Colors.white,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Square(
              color: Colors.blue,
              size: 248,
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Square(
              color: Colors.purple,
              size: 248,
            ),
          ),
        ],
      ),
    );
  }
}
