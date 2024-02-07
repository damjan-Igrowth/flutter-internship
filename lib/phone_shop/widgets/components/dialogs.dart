import 'package:flutter/material.dart';
import 'package:flutter_internship/components/widgets/circle_icon.dart';

class Dialogs extends StatelessWidget {
  final CircleIcon circleIcon;
  final String description;
  final String title;
  final Widget button;

  const Dialogs({
    super.key,
    required this.circleIcon,
    required this.description,
    required this.title,
    required this.button,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      surfaceTintColor: const Color(0xFFFFFFFF),
      icon: circleIcon,
      content: Column(
        children: [
          _Title(title: title),
          const SizedBox(height: 12),
          _Description(description: description),
        ],
      ),
      actions: <Widget>[button],
    );
  }
}

class _Title extends StatelessWidget {
  final String title;

  const _Title({
    required this.title,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: Color(0xFF000000),
        fontFamily: 'Inter',
        fontSize: 20,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class _Description extends StatelessWidget {
  final String description;

  const _Description({
    required this.description,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      style: const TextStyle(
        color: Color(0xFF787878),
        fontFamily: 'Inter',
        fontSize: 14,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
