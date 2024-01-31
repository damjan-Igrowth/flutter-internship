import 'package:flutter/material.dart';
import 'package:flutter_internship/layout_tasks/helpers/triangle_painter.dart';
import 'package:flutter_internship/layout_tasks/shapes/square.dart';

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
