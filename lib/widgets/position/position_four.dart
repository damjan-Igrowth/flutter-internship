import 'package:flutter/material.dart';
import 'package:flutter_internship/widgets/shapes/square.dart';
import 'package:flutter_internship/widgets/shapes/circle.dart';

class PositionFour extends StatelessWidget {
  const PositionFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 248,
          height: 248,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.blue,
          ),
        ),
        Transform(
          alignment: FractionalOffset.center,
          transform: Matrix4.identity()..rotateZ(45 * 3.1415927 / 180),
          child: const Square(
            color: Colors.purple,
            size: 176,
          ),
        ),
        const Positioned(
          left: 192,
          top: 192,
          child: Circle(
            color: Colors.purple,
            radius: 28,
          ),
        ),
        const Positioned(
          right: 192,
          top: 192,
          child: Circle(
            color: Colors.purple,
            radius: 28,
          ),
        ),
        const Positioned(
          left: 192,
          bottom: 192,
          child: Circle(
            color: Colors.purple,
            radius: 28,
          ),
        ),
        const Positioned(
          right: 192,
          bottom: 192,
          child: Circle(
            color: Colors.purple,
            radius: 28,
          ),
        ),
      ],
    );
  }
}
