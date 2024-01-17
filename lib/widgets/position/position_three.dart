import 'package:flutter/material.dart';
import 'package:flutter_internship/widgets/shapes/square.dart';

class PositionThree extends StatelessWidget {
  const PositionThree({super.key});

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
        ),
        Transform(
          alignment: FractionalOffset.center,
          transform: Matrix4.identity()..rotateZ(45 * 3.1415927 / 180),
          child: const Square(
            color: Colors.purple,
            size: 176,
          ),
        ),
      ],
    );
  }
}
