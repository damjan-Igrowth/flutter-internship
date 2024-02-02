import 'package:flutter/material.dart';

class TextFieldTemplate extends StatelessWidget {
  final String labelText;
  final String errorText;
  final bool filled;
  final Color fillColor;
  final bool active;
  final bool disabled;
  final bool showError;
  final bool showBorder;

  const TextFieldTemplate({
    super.key,
    required this.labelText,
    this.errorText = '',
    this.filled = false,
    this.fillColor = const Color(0xFFFFFFFF),
    this.active = true,
    this.disabled = false,
    this.showError = false,
    this.showBorder = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: !disabled,
      decoration: InputDecoration(
        labelText: labelText,
        errorText: showError ? errorText : null,
        filled: filled,
        fillColor: filled ? fillColor : null,
        border: showBorder
            ? const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                borderSide: BorderSide(
                  color: Color(0xFFC9D2DE),
                  width: 1,
                ),
              )
            : null,
        enabledBorder: showBorder
            ? const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              )
            : null,
        focusedBorder: showBorder
            ? const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
              )
            : null,
      ),
    );
  }
}

class TextFieldExample extends StatelessWidget {
  const TextFieldExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFieldTemplate(
                labelText: 'Text',
                showBorder: true,
              ),
              SizedBox(height: 40),
              TextFieldTemplate(
                labelText: 'Text',
                errorText: 'Error text',
                showError: true,
                showBorder: true,
              ),
              SizedBox(height: 40),
              TextFieldTemplate(
                labelText: 'Text',
                filled: true,
                showBorder: true,
              ),
              SizedBox(height: 40),
              TextFieldTemplate(
                labelText: 'Text',
                active: true,
                showBorder: true,
              ),
              SizedBox(height: 40),
              TextFieldTemplate(
                labelText: 'Text',
                errorText: 'Error text',
                showError: true,
                showBorder: true,
              ),
              SizedBox(height: 40),
              TextFieldTemplate(
                labelText: 'Text',
                disabled: true,
                showBorder: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
