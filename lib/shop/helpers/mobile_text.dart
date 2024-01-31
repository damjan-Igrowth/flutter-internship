import 'package:flutter/material.dart';

class MobileText extends StatelessWidget {
  final String text;
  final Color textColor;
  final double fontSize;

  const MobileText({
    super.key,
    required this.text,
    this.textColor = const Color(0xFF000000),
    this.fontSize = 16,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      child: Align(
        alignment: Alignment.centerLeft,
        child: _CommonText(
          text: text,
          textColor: textColor,
          fontSize: fontSize,
        ),
      ),
    );
  }
}

class BlueText extends StatelessWidget {
  final String text;

  const BlueText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return MobileText(
      text: text,
      textColor: const Color(0xFF1B93F6),
      fontSize: 14,
    );
  }
}

class _CommonText extends StatelessWidget {
  final String text;
  final Color textColor;
  final double fontSize;

  const _CommonText({
    required this.text,
    required this.textColor,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: textColor,
        fontWeight: FontWeight.w600,
        fontSize: fontSize,
        fontFamily: 'Inter',
      ),
    );
  }
}
