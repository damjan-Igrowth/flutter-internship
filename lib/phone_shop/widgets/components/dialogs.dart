import 'package:flutter/material.dart';
import 'package:flutter_internship/components/widgets/circle_icon.dart';

class Dialogs extends StatelessWidget {
  final CircleIcon circleIcon;
  final String description;
  final String title;
  final String buttonText;
  final Color buttonColor;
  final Color buttonTextColor;
  final VoidCallback onTap;

  const Dialogs.error({
    super.key,
    required this.description,
    required this.onTap,
  })  : circleIcon = const CircleIcon.error(),
        title = 'Error!',
        buttonText = 'Try again',
        buttonColor = const Color(0xFFFFFFFF),
        buttonTextColor = const Color(0xFF000000);

  const Dialogs.success({
    super.key,
    required this.description,
    required this.onTap,
  })  : circleIcon = const CircleIcon.success(),
        title = 'Success!',
        buttonText = 'Continue',
        buttonColor = const Color(0xFF34A4E3),
        buttonTextColor = const Color(0xFFFFFFFF);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      surfaceTintColor: const Color(0xFFFFFFFF),
      content: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            circleIcon,
            const SizedBox(height: 16),
            Text(
              title,
              style: const TextStyle(
                color: Color(0xFF000000),
                fontFamily: 'Inter',
                fontSize: 20,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              description,
              style: const TextStyle(
                color: Color(0xFF787878),
                fontFamily: 'Inter',
                fontSize: 14,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onPressed: onTap,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
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
        ),
      ],
    );
  }
}
