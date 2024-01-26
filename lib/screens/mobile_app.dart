import 'package:flutter/material.dart';
import 'package:flutter_internship/widgets/mobile/sole_sphere.dart';

class MobileAppClass extends StatelessWidget {
  const MobileAppClass({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SoleSphere(),
    );
  }
}
