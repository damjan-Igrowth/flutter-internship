import 'package:flutter/material.dart';

class FillButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback? onTap;

  const FillButton({
    super.key,
    required this.buttonText,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return const Color(0xFF8A93A0);
            }
            return const Color(0xFF34A4E3);
          },
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      onPressed: onTap,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          child: Text(
            buttonText,
            style: TextStyle(
              color: onTap == null
                  ? const Color(0xFFCED6E2)
                  : const Color(0xFFFFFFFF),
              fontFamily: onTap == null ? 'Poppins' : 'Inter',
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
