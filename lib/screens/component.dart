import 'package:flutter/material.dart';
import 'package:flutter_internship/helpers/header_text.dart';
import 'package:flutter_internship/helpers/spacer_width.dart';
import 'package:flutter_internship/widgets/components/chip_component.dart';
import 'package:flutter_internship/widgets/components/circle_icon.dart';

class ComponentClass extends StatelessWidget {
  const ComponentClass({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const HeaderText(text: 'Components'),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              //////////1
              HeaderText(text: 'Chip components'),
              Row(
                children: [
                  ChipComponent(
                      chipType: ChipType.flat, label: 'Work in progress'),
                  SpacerWidth(),
                  ChipComponent(
                      chipType: ChipType.flat,
                      label: 'Work in progress',
                      icon: Icons.more_horiz),
                  SpacerWidth(),
                  ChipComponent(
                      chipType: ChipType.clean,
                      label: 'New',
                      icon: Icons.circle),
                  SpacerWidth(),
                  ChipComponent(
                      chipType: ChipType.clean, label: 'Old collection'),
                ],
              ),
              //////////2
              HeaderText(text: 'Circle Icon'),
              Row(
                children: [
                  CircleIcon.success(),
                  SpacerWidth(),
                  CircleIcon.warning(),
                  SpacerWidth(),
                  CircleIcon.error(),
                ],
              ),
              //////////3
            ],
          ),
        ),
      ),
    );
  }
}
