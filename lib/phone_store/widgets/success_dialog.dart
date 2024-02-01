import 'package:flutter/material.dart';
import 'package:flutter_internship/components/widgets/circle_icon.dart';

class ErrorDialog extends StatelessWidget {
  const ErrorDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      surfaceTintColor: const Color(0xFFFFFFFF),
      contentPadding: const EdgeInsets.all(16),
      content: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleIcon.error(),
          SizedBox(height: 16),
          Text(
            'Success!',
            style: TextStyle(
              color: Color(0xFF000000),
              fontFamily: 'Inter',
              fontSize: 20,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 12),
          Text(
            'The product has been successfully edited!',
            style: TextStyle(
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
        Center(
          child: TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Continue'),
          ),
        ),
      ],
    );
  }
}
