import 'package:flutter/material.dart';
import 'package:flutter_internship/helpers/header.dart';
import 'package:flutter_internship/widgets/position/position_five.dart';
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
          title: const Header(text: 'Layout Practice'),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              Header(text: 'Rows'),
              ShapesRow(),
              Header(text: 'Column'),
              ShapesColumn(),
              Header(text: 'Flex'),
              FlexF(),
              Header(text: 'Position Inside'),
              PositionInside(),
              Header(text: 'Position Overlap'),
              PositionOverlap(),
              Header(text: 'Position One'),
              PositionOne(),
              Header(text: 'Position Two'),
              PositionTwo(),
              Header(text: 'Position Three'),
              PositionThree(),
              Header(text: 'Position Four'),
              PositionFour(),
              Header(text: 'Position Five'),
              PositionFive(),
            ],
          ),
        ),
      ),
    );
  }
}
