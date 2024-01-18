import 'package:flutter/material.dart';
import 'package:flutter_internship/widgets/shapes/square.dart';

class PositionThree extends StatelessWidget {
  const PositionThree({super.key});

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
        ],
      ),
    );
  }
}
