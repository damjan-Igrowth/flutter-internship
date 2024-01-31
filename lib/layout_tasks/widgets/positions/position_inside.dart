import 'package:flutter/material.dart';
import 'package:flutter_internship/layout_tasks/widgets/shapes/square.dart';

class PositionInside extends StatelessWidget {
  const PositionInside({super.key});

  @override
  Widget build(BuildContext context) {
    return const Square(
      size: 248,
      color: Colors.blue,
      child: Align(
        alignment: Alignment.center,
        child: Square(
          color: Colors.purple,
          size: 176,
        ),
      ),
    );
  }
}
