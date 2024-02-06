import 'package:flutter/material.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
        backgroundColor: MaterialStateProperty.all(const Color(0xFF34A4E3)),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
        child: Text(
          'Save changes',
          style: TextStyle(
            color: Color(0xFFFFFFFF),
            fontFamily: 'Inter',
            fontSize: 16,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
