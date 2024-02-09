import 'package:flutter/material.dart';

const Color enabledColor = Color(0xFFC9D2DE);
const Color errorColor = Color(0xFFFF4242);
const Color focusedColor = Color(0xFF7E44F8);
const Color disabledColor = Color(0xFFC9D2DE);

class TextInput extends StatelessWidget {
  final String label;
  final Widget? suffixIcon;
  final String? suffixText;
  final bool enabled;
  final String? initialValue;

  const TextInput({
    super.key,
    required this.label,
    this.suffixIcon,
    this.suffixText,
    this.enabled = true,
    this.initialValue,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            initialValue: initialValue,
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              labelText: label,
              labelStyle: MaterialStateTextStyle.resolveWith(
                (Set<MaterialState> states) {
                  Color? color;
                  FontWeight fontWeight = FontWeight.w400;
                  if (states.contains(MaterialState.error)) {
                    color = errorColor;
                  } else if (states.contains(MaterialState.focused) ||
                      states.contains(MaterialState.pressed)) {
                    color = focusedColor;
                    fontWeight = FontWeight.w600;
                  } else if (states.contains(MaterialState.disabled)) {
                    color = disabledColor;
                  }
                  return TextStyle(
                    color: enabled ? color : const Color(0xFF7B828A),
                    fontFamily: 'Inter',
                    fontSize: 16,
                    fontStyle: FontStyle.normal,
                    fontWeight: fontWeight,
                  );
                },
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: enabled ? enabledColor : disabledColor,
                ),
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
                borderSide: const BorderSide(color: errorColor),
              ),
              filled: true,
              fillColor:
                  enabled ? const Color(0xFFFFFFFF) : const Color(0xFFF3F4F8),
              suffixIcon: suffixIcon,
              suffixIconColor: const Color(0xFF34A4E3),
              suffixText: suffixText,
              suffixStyle: const TextStyle(
                color: Color(0xFF949494),
                fontFamily: 'Inter',
                fontSize: 16,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
              ),
              enabled: enabled,
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}
