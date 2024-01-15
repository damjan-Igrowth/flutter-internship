import 'package:flutter/material.dart';

class ShapesRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
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
          SizedBox(
            height: 40,
          ),
          Row(
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
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
          Row(
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
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
          Row(
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
        ],
      ),
    );
  }
}

class Square extends StatelessWidget {
  final double size;
  final Color color;

  const Square({required this.size, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: color,
      ),
    );
  }
}

class Rectangle extends StatelessWidget {
  final double width;
  final double height;
  final Color color;

  const Rectangle(
      {required this.width, required this.height, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: color,
      ),
    );
  }
}
