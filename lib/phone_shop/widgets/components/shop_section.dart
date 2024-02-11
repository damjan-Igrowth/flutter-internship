import 'package:flutter/material.dart';

class ShopSection extends StatelessWidget {
  final String title;
  final Widget child;

  const ShopSection({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _Title(title: title),
        const SizedBox(height: 16),
        child,
      ],
    );
  }
}

class _Title extends StatelessWidget {
  final String title;

  const _Title({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: Color(0xFF121212),
        fontFamily: 'Inter',
        fontSize: 16,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
