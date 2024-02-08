import 'package:flutter/material.dart';

class TextInput extends StatefulWidget {
  final bool isDisabled;
  final String label;
  final Widget? icon;
  final String? suffixText;

  const TextInput({
    super.key,
    required this.label,
    this.isDisabled = false,
    this.icon,
    this.suffixText,
  });

  @override
  State<TextInput> createState() => _TextFormTemplateState();
}

class _TextFormTemplateState extends State<TextInput> {
  final _textController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    const Color enabledColor = Color(0xFFC9D2DE);
    const Color errorColor = Color(0xFFFF4242);
    const Color focusedColor = Color(0xFF7E44F8);
    const Color disabledColor = Color(0xFFC9D2DE);

    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _textController,
            enabled: !widget.isDisabled,
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              labelText: widget.label,
              labelStyle: MaterialStateTextStyle.resolveWith(
                (Set<MaterialState> states) {
                  Color? color;
                  if (states.contains(MaterialState.error)) {
                    color = errorColor;
                  } else if (states.contains(MaterialState.focused)) {
                    color = focusedColor;
                  } else if (states.contains(MaterialState.disabled)) {
                    color = disabledColor;
                  }
                  return TextStyle(
                    color: color,
                    fontFamily: 'Inter',
                    fontSize: 16,
                    fontStyle: FontStyle.normal,
                    fontWeight: _textController.text.isNotEmpty
                        ? FontWeight.w600
                        : FontWeight.w400,
                  );
                },
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: enabledColor),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: enabledColor),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: errorColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: focusedColor),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: disabledColor),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: focusedColor),
              ),
              filled: true,
              fillColor: widget.isDisabled
                  ? const Color(0xFFF3F4F8)
                  : const Color(0xFFFFFFFF),
              suffixIcon: widget.icon,
              suffixIconColor: const Color(0xFF34A4E3),
              suffixText: widget.suffixText,
              suffixStyle: const TextStyle(
                color: Color(0xFF949494),
                fontFamily: 'Inter',
                fontSize: 16,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
