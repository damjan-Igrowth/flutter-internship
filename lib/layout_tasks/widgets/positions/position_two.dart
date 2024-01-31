import 'package:flutter/material.dart';
import 'package:flutter_internship/layout_tasks/widgets/shapes/square.dart';

class PositionTwo extends StatelessWidget {
  const PositionTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Square(
      size: 248,
      color: Colors.blue,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Square(
              color: Colors.purple,
              size: 56,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Square(
              color: Colors.purple,
              size: 56,
            ),
          ),
        ],
      ),
    );
  }
}
