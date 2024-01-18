import 'package:flutter/material.dart';
import 'package:flutter_internship/widgets/painter/triangle_painter.dart';

class PositionFive extends StatelessWidget {
  const PositionFive({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 248,
      height: 248,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.blue,
      ),
      child: const CustomPaint(
        painter: TrianglePainter(
          color: Colors.purple,
        ),
      ),
    );
  }
}
