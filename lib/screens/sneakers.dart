import 'package:flutter/material.dart';

class SneakersScreen extends StatelessWidget {
  const SneakersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Sneakers',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Inter',
              fontSize: 20,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
