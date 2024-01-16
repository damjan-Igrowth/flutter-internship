import 'package:flutter/material.dart';
import 'package:flutter_internship/widgets/shapes_column.dart';
import 'package:flutter_internship/widgets/shapes_row.dart';
import 'package:flutter_internship/widgets/flex_f.dart';
import 'package:flutter_internship/widgets/position.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Layout - Practice',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                  child: Text(
                    'Row',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
                ShapesRow(),
                const SizedBox(
                  height: 40,
                  child: Text(
                    'Column',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
                ShapesColumn(),
                const SizedBox(
                  height: 40,
                  child: Text(
                    'Flex',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
                FlexF(),
                const SizedBox(
                  height: 40,
                  child: Text(
                    'Positioning',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
                //OverlappingSquares(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
