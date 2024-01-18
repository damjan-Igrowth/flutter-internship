import 'package:flutter/material.dart';
import 'package:flutter_internship/widgets/shapes/square.dart';
import 'package:flutter_internship/widgets/shapes/circle.dart';

class PositionFour extends StatelessWidget {
  const PositionFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 248,
      height: 248,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.blue,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Transform.rotate(
            angle: 0.7854,
            child: const Square(
              color: Colors.purple,
              size: 176,
            ),
          ),
          const Positioned(
            child: Align(
              alignment: Alignment.topLeft,
              child: Circle(
                color: Colors.purple,
                radius: 28,
              ),
            ),
          ),
          const Positioned(
            child: Align(
              alignment: Alignment.topRight,
              child: Circle(
                color: Colors.purple,
                radius: 28,
              ),
            ),
          ),
          const Positioned(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Circle(
                color: Colors.purple,
                radius: 28,
              ),
            ),
          ),
          const Positioned(
            child: Align(
              alignment: Alignment.bottomRight,
              child: Circle(
                color: Colors.purple,
                radius: 28,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
