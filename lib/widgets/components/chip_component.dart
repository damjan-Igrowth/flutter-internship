import 'package:flutter/material.dart';
import 'package:flutter_internship/helpers/chip_text.dart';
import 'package:flutter_internship/helpers/spacer_width.dart';

class ChipComponentClass extends StatelessWidget {
  const ChipComponentClass({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        //1
        Chip(
          backgroundColor: Colors.grey,
          label: ChipText(text: 'Work in Progress'),
        ),
        SpacerWidth(),
        //2
        Chip(
          backgroundColor: Colors.grey,
          label: Row(
            children: [
              ChipText(text: 'Work in Progress'),
              SpacerWidth(),
              Icon(
                Icons.more_horiz,
                color: Colors.black,
                size: 18,
              ),
            ],
          ),
        ),
        SpacerWidth(),
        //3
        Chip(
          backgroundColor: Colors.white,
          label: Row(
            children: [
              ChipText(text: 'New'),
              SpacerWidth(),
              Icon(
                Icons.circle,
                color: Colors.red,
                size: 12,
              ),
            ],
          ),
        ),
        SpacerWidth(),
        //4
        Chip(
          backgroundColor: Colors.white,
          label: ChipText(text: 'Old collection'),
        ),
        SpacerWidth(),
      ],
    );
  }
}
