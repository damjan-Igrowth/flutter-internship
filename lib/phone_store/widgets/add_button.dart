import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: null,
      style: ButtonStyle(
        padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
        backgroundColor: MaterialStateProperty.all(const Color(0xFF8A93A0)),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 59),
        child: Text(
          'Add product',
          style: TextStyle(
            color: Color(0xFFCED6E2),
            fontFamily: 'Poppins',
            fontSize: 16,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
