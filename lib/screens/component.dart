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
              HeaderText(text: 'Chip components'),
              ChipComponentClass(),
              HeaderText(text: 'Circle icon'),
              Row(
                children: [
                  CircleIconClass(
                    icon: Icons.check_circle_outline_rounded,
                    iconSize: 24,
                    containerSize: 48,
                    backgroundColor: Colors.greenAccent,
                    iconColor: Colors.green,
                  ),
                  SpacerWidth(),
                  CircleIconClass(
                    icon: Icons.error,
                    iconSize: 24,
                    containerSize: 48,
                    backgroundColor: Colors.orangeAccent,
                    iconColor: Colors.orange,
                  ),
                  SpacerWidth(),
                  CircleIconClass(
                    icon: Icons.cancel,
                    iconSize: 24,
                    containerSize: 48,
                    backgroundColor: Colors.redAccent,
                    iconColor: Colors.red,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
