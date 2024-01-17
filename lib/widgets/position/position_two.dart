import 'package:flutter/material.dart';
import 'package:flutter_internship/widgets/shapes/square.dart';

class PositionTwo extends StatelessWidget {
  const PositionTwo({super.key});

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
        const Positioned(
          left: 192,
          top: 192,
          child: Square(
            color: Colors.purple,
            size: 56,
          ),
        ),
        const Positioned(
          right: 192,
          bottom: 192,
          child: Square(
            color: Colors.purple,
            size: 56,
          ),
        ),
      ],
    );
  }
}
