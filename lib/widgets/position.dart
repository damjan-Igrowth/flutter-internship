import 'package:flutter/material.dart';
import 'package:flutter_internship/models/shapes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Three Squares in a Frame'),
        ),
        body: Center(
          child: FrameWithSquares(),
        ),
      ),
    );
  }
}

class FrameWithSquares extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Square(color: Colors.blue),
              ),
              Expanded(
                child: Square(color: Colors.green),
              ),
            ],
          ),
        ),
        Expanded(
          child: Square(color: Colors.red),
        ),
      ],
    );
  }
}
