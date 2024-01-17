import 'package:flutter/material.dart';
import 'package:flutter_internship/helpers/texts.dart';
import 'package:flutter_internship/widgets/position/position.five.dart';
import 'package:flutter_internship/widgets/position/position_four.dart';
import 'package:flutter_internship/widgets/position/position_right.dart';
import 'package:flutter_internship/widgets/position/position_three.dart';
import 'package:flutter_internship/widgets/position/position_two.dart';
import 'package:flutter_internship/layout_tasks/shapes_column.dart';
import 'package:flutter_internship/layout_tasks/shapes_row.dart';
import 'package:flutter_internship/layout_tasks/flex_f.dart';
import 'package:flutter_internship/widgets/position/position_overlap.dart';
import 'package:flutter_internship/widgets/position/position_inside.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Texts(text: 'Layout Practice'),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              Texts(text: 'Rows'),
              ShapesRow(),
              Texts(text: 'Column'),
              ShapesColumn(),
              Texts(text: 'Flex'),
              FlexF(),
              Texts(text: 'Position Inside'),
              PositionInside(),
              Texts(text: 'Position Overlap'),
              PositionOverlap(),
              Texts(text: 'Position One'),
              PositionOne(),
              Texts(text: 'Position Two'),
              PositionTwo(),
              Texts(text: 'Position Three'),
              PositionThree(),
              Texts(text: 'Position Four'),
              PositionFour(),
              Texts(text: 'Position Five'),
              PositionFive(),
            ],
          ),
        ),
      ),
    );
  }
}
