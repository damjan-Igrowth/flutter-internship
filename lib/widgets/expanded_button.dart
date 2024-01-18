import 'package:flutter/material.dart';

class ExpandedButton extends StatelessWidget {
  final Color backgroundColor;
  final Color foregroundColor;
  final String buttonText;

  const ExpandedButton({
    super.key,
    required this.backgroundColor,
    required this.foregroundColor,
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
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      child: Text(buttonText),
    );
  }
}
