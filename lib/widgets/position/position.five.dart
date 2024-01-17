import 'package:flutter/material.dart';
import 'package:flutter_internship/widgets/shapes/triangle.dart';

class PositionFive extends StatelessWidget {
  const PositionFive({
    super.key,
  });

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
          child: const CustomPaint(
            painter: Triangle(
              size: 248,
              color: Colors.purple,
            ),
          ),
        ),
      ],
    );
  }
}
