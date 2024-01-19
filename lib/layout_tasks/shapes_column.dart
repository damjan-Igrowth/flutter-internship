import 'package:flutter/material.dart';
import 'package:flutter_internship/helpers/spacerbetween.dart';
import 'package:flutter_internship/widgets/shapes/square.dart';
import 'package:flutter_internship/widgets/shapes/rectangle.dart';

class ShapesColumn extends StatelessWidget {
  const ShapesColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //1
        const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Square(size: 56, color: Colors.purple),
            Rectangle(height: 100, width: 24, color: Colors.orange),
            Rectangle(height: 24, width: 260, color: Colors.blue),
          ],
        ),
        const SpacerBetween(),

        //2
        const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Square(size: 56, color: Colors.purple),
            Rectangle(height: 100, width: 24, color: Colors.orange),
            Rectangle(height: 24, width: 260, color: Colors.blue),
          ],
        ),
        const SpacerBetween(),

        //3
        const Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Square(size: 56, color: Colors.purple),
            Rectangle(height: 100, width: 24, color: Colors.orange),
            Rectangle(height: 24, width: 260, color: Colors.blue),
          ],
        ),
        const SpacerBetween(),

        //4
        Container(
          width: 250,
          height: 250,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Square(size: 56, color: Colors.purple),
              Rectangle(height: 100, width: 24, color: Colors.orange),
              Rectangle(height: 24, width: 260, color: Colors.blue),
            ],
          ),
        ),
        const SpacerBetween(),

        //5
        Container(
          width: 250,
          height: 250,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Square(size: 56, color: Colors.purple),
              Rectangle(height: 100, width: 24, color: Colors.orange),
              Rectangle(height: 24, width: 260, color: Colors.blue),
            ],
          ),
        ),
        const SpacerBetween(),
      ],
    );
  }
}
