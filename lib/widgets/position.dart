import 'package:flutter/material.dart';
import 'package:flutter_internship/models/shapes.dart';

class OverlappingSquares extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          top: 50,
          left: 50,
          child: Square(size: 30, color: Colors.purple),
        ),
        Positioned(
          top: 75,
          left: 75,
          child: Square(size: 30, color: Colors.blue),
        ),
      ],
    );
  }
}
