import 'package:flutter/material.dart';

class TryAgainButton extends StatelessWidget {
  final VoidCallback onTap;

  const TryAgainButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: Color(0xFFCFCFCF), width: 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      onPressed: onTap,
      child: const Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Text(
            'Try again',
            style: TextStyle(
              color: Color(0xFF000000),
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
