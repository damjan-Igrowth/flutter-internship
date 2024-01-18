import 'package:flutter/material.dart';
import 'package:flutter_internship/widgets/shapes/square.dart';

class PositionOverlap extends StatelessWidget {
  const PositionOverlap({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 288,
      height: 288,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Stack(
        children: [
          Positioned(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Square(
                color: Colors.blue,
                size: 248,
              ),
            ),
          ),
          Positioned(
            child: Align(
              alignment: Alignment.topRight,
              child: Square(
                color: Colors.purple,
                size: 248,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
