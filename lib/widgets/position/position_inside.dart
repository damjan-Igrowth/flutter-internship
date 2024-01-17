import 'package:flutter/material.dart';
import 'package:flutter_internship/widgets/shapes/square.dart';

class PositionInside extends StatelessWidget {
  const PositionInside({super.key});

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
          child: Square(
            color: Colors.purple,
            size: 176,
          ),
        ),
      ],
    );
  }
}
