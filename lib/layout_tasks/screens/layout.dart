import 'package:flutter/material.dart';
import 'package:flutter_internship/layout_tasks/helpers/header_text.dart';
import 'package:flutter_internship/layout_tasks/widgets/positions/position_five.dart';
import 'package:flutter_internship/layout_tasks/widgets/positions/position_four.dart';
import 'package:flutter_internship/layout_tasks/widgets/positions/position_right.dart';
import 'package:flutter_internship/layout_tasks/widgets/positions/position_three.dart';
import 'package:flutter_internship/layout_tasks/widgets/positions/position_two.dart';
import 'package:flutter_internship/layout_tasks/widgets/shapes_column.dart';
import 'package:flutter_internship/layout_tasks/widgets/shapes_row.dart';
import 'package:flutter_internship/layout_tasks/widgets/flex_f.dart';
import 'package:flutter_internship/layout_tasks/widgets/positions/position_overlap.dart';
import 'package:flutter_internship/layout_tasks/widgets/positions/position_inside.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const HeaderText(text: 'Layout Practice'),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            HeaderText(text: 'Rows'),
            ShapesRow(),
            HeaderText(text: 'Column'),
            ShapesColumn(),
            HeaderText(text: 'Flex'),
            FlexF(),
            HeaderText(text: 'Position Inside'),
            PositionInside(),
            HeaderText(text: 'Position Overlap'),
            PositionOverlap(),
            HeaderText(text: 'Position One'),
            PositionOne(),
            HeaderText(text: 'Position Two'),
            PositionTwo(),
            HeaderText(text: 'Position Three'),
            PositionThree(),
            HeaderText(text: 'Position Four'),
            PositionFour(),
            HeaderText(text: 'Position Five'),
            PositionFive(),
          ],
        ),
      ),
    );
  }
}
