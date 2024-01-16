import 'package:flutter/material.dart';
import 'package:flutter_internship/models/shapes.dart';

class ShapesColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Square(size: 56, color: Colors.purple),
              Rectangle(height: 100, width: 24, color: Colors.orange),
              Rectangle(height: 24, width: 260, color: Colors.blue),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Square(size: 56, color: Colors.purple),
              Rectangle(height: 100, width: 24, color: Colors.orange),
              Rectangle(height: 24, width: 260, color: Colors.blue),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Square(size: 56, color: Colors.purple),
              Rectangle(height: 100, width: 24, color: Colors.orange),
              Rectangle(height: 24, width: 260, color: Colors.blue),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Square(size: 56, color: Colors.purple),
              Rectangle(height: 100, width: 24, color: Colors.orange),
              Rectangle(height: 24, width: 260, color: Colors.blue),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Square(size: 56, color: Colors.purple),
              Rectangle(height: 100, width: 24, color: Colors.orange),
              Rectangle(height: 24, width: 260, color: Colors.blue),
            ],
          ),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
