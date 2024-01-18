import 'package:flutter/material.dart';
import 'package:flutter_internship/widgets/shapes/square.dart';

class PositionOne extends StatelessWidget {
  const PositionOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 248,
      height: 248,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.blue,
      ),
      child: const Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            child: Align(
              alignment: Alignment.centerRight,
              child: Square(
                color: Colors.purple,
                size: 56,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
