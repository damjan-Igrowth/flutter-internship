import 'package:flutter/material.dart';
import 'package:flutter_internship/components/widgets/circle_icon.dart';

class ErrorDialog extends StatelessWidget {
  const ErrorDialog({super.key});
  @override
  Widget build(BuildContext context) {
    return const _BaseDialog(
      circleIcon: CircleIcon.error(),
      title: 'Error!',
      description: 'Something went wrong while editing product!',
      buttonText: 'Try again',
      buttonColor: Color(0xFFFFFFFF),
      buttonTextColor: Color(0xFF000000),
      borderColor: Color(0xFFCFCFCF),
    );
  }
}

class SuccessDialog extends StatelessWidget {
  const SuccessDialog({super.key});
  @override
  Widget build(BuildContext context) {
    return const _BaseDialog(
      circleIcon: CircleIcon.success(),
      title: 'Success!',
      description: 'The product has been successfully edited! ',
      buttonText: 'Continue',
      buttonColor: Color(0xFF34A4E3),
      buttonTextColor: Color(0xFFFFFFFF),
      borderColor: Color(0xFF34A4E3),
    );
  }
}

class _BaseDialog extends StatelessWidget {
  final CircleIcon circleIcon;
  final String description;
  final String title;
  final String buttonText;
  final Color buttonColor;
  final Color buttonTextColor;
  final Color borderColor;

  const _BaseDialog({
    required this.circleIcon,
    required this.description,
    required this.title,
    required this.buttonText,
    required this.buttonColor,
    required this.buttonTextColor,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: AlertDialog(
        surfaceTintColor: const Color(0xFFFFFFFF),
        content: Column(
          mainAxisSize: MainAxisSize.min,
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
        actions: <Widget>[
          Container(
            alignment: Alignment.center,
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: borderColor, width: 1),
              color: buttonColor,
            ),
            child: MaterialButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              textColor: buttonTextColor,
              child: Text(buttonText),
            ),
          ),
        ],
      ),
    );
  }
}
