import 'package:flutter/material.dart';
import 'package:flutter_internship/layout_tasks/shapes/square.dart';

class PositionOne extends StatelessWidget {
  const PositionOne({super.key});

  @override
  Widget build(BuildContext context) {
    return const Square(
      size: 248,
      color: Colors.blue,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.centerRight,
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
