import 'package:flutter/material.dart';
import 'package:flutter_internship/widgets/painter/triangle_painter.dart';
import 'package:flutter_internship/widgets/shapes/square.dart';

class PositionFive extends StatelessWidget {
  const PositionFive({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Square(
      size: 248,
      color: Colors.blue,
      child: CustomPaint(
        painter: TrianglePainter(
          color: Colors.purple,
        ),
      ),
    );
  }
}
