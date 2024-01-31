import 'package:flutter/material.dart';
import 'package:flutter_internship/layout_tasks/helpers/spacer_height.dart';
import 'package:flutter_internship/layout_tasks/shapes/square.dart';
import 'package:flutter_internship/layout_tasks/shapes/rectangle.dart';

class ShapesRow extends StatelessWidget {
  const ShapesRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Square(size: 56, color: Colors.purple),
            Rectangle(height: 100, width: 24, color: Colors.orange),
            Rectangle(height: 24, width: 260, color: Colors.blue),
          ],
        ),
        SpacerHeight(),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Square(size: 56, color: Colors.purple),
            Rectangle(height: 100, width: 24, color: Colors.orange),
            Rectangle(height: 24, width: 260, color: Colors.blue),
          ],
        ),
        SpacerHeight(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Square(size: 56, color: Colors.purple),
            Rectangle(height: 100, width: 24, color: Colors.orange),
            Rectangle(height: 24, width: 260, color: Colors.blue),
          ],
        ),
        SpacerHeight(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Square(size: 56, color: Colors.purple),
            Rectangle(height: 100, width: 24, color: Colors.orange),
            Rectangle(height: 24, width: 260, color: Colors.blue),
          ],
        ),
        SpacerHeight(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Square(size: 56, color: Colors.purple),
            Rectangle(height: 100, width: 24, color: Colors.orange),
            Rectangle(height: 24, width: 260, color: Colors.blue),
          ],
        ),
        SpacerHeight(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Square(size: 56, color: Colors.purple),
            Rectangle(height: 100, width: 24, color: Colors.orange),
            Rectangle(height: 24, width: 260, color: Colors.blue),
          ],
        ),
        SpacerHeight(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Square(size: 56, color: Colors.purple),
            Rectangle(height: 100, width: 24, color: Colors.orange),
            Rectangle(height: 24, width: 260, color: Colors.blue),
          ],
        ),
        SpacerHeight(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Square(size: 56, color: Colors.purple),
            Rectangle(height: 100, width: 24, color: Colors.orange),
            Rectangle(height: 24, width: 260, color: Colors.blue),
          ],
        ),
        SpacerHeight(),
      ],
    );
  }
}
