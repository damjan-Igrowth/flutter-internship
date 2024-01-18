import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final Color backgroundColor;
  final Color foregroundColor;
  final Size size;
  final String buttonText;

  const Buttons({
    super.key,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.size,
    required this.buttonText,
    required this.onTap,
  });
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onTap,
      style: OutlinedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        fixedSize: size,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        padding: const EdgeInsets.all(16.0),
      ),
      child: Text(buttonText),
    );
  }
}
