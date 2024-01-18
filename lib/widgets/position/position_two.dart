import 'package:flutter/material.dart';
import 'package:flutter_internship/widgets/shapes/square.dart';

class PositionTwo extends StatelessWidget {
  const PositionTwo({super.key});

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
              alignment: Alignment.topLeft,
              child: Square(
                color: Colors.purple,
                size: 56,
              ),
            ),
          ),
          Positioned(
            child: Align(
              alignment: Alignment.bottomRight,
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
