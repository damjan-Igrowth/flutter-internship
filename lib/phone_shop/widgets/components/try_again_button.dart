import 'package:flutter/material.dart';

class TryAgainButton extends StatelessWidget {
  final String buttonText;
  final Color buttonTextColor;
  final VoidCallback onTap;

  const TryAgainButton({
    super.key,
    required this.buttonText,
    required this.buttonTextColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(color: Color(0xFFCFCFCF), width: 1),
        ),
      ),
      onPressed: onTap,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            buttonText,
            style: TextStyle(
              color: buttonTextColor,
              fontFamily: 'Inter',
              fontSize: 16,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
