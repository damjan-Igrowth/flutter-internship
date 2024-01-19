import 'package:flutter/material.dart';
import 'package:flutter_internship/helpers/texts.dart';
import 'package:flutter_internship/widgets/components/chip_component.dart';
import 'package:flutter_internship/widgets/components/circle_icon.dart';

class ComponentClass extends StatelessWidget {
  const ComponentClass({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Assignment II'),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              Texts(text: 'Chip components'),
              ChipComponentClass(),
              Texts(text: 'Circle icon'),
              Row(
                children: [
                  CircleIconClass(
                    icon: Icons.check_circle_outline_rounded,
                    iconSize: 24,
                    containerSize: 48,
                    backgroundColor: Colors.greenAccent,
                    iconColor: Colors.green,
                  ),
                  CircleIconClass(
                    icon: Icons.warning_sharp,
                    iconSize: 24,
                    containerSize: 48,
                    backgroundColor: Colors.orangeAccent,
                    iconColor: Colors.orange,
                  ),
                  CircleIconClass(
                    icon: Icons.remove_circle_outline_rounded,
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
