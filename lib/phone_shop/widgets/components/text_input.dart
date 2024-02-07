import 'package:flutter/material.dart';

class TextInput extends StatefulWidget {
  final bool isDisabled;
  final Widget? icon;

  const TextInput({
    super.key,
    this.isDisabled = false,
    this.icon,
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
              suffixIcon: widget.icon,
              labelText: 'Text',
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
              filled: true,
              fillColor: widget.isDisabled
                  ? const Color(0xFFF3F4F8)
                  : const Color(0xFFFFFFFF),
            ),
            validator: (value) {
              if (_textController.text.isEmpty &&
                  (value == null ||
                      value.isEmpty ||
                      int.tryParse(value) == null ||
                      int.tryParse(value)! <= 0)) {
                return 'Error text';
              } else if (_textController.text.isNotEmpty &&
                  (value == null || value.length < 12)) {
                return 'Text must have at least 12 characters';
              }
              return null;
            },
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {}
            },
            child: const Text('Add product'),
          ),
          ElevatedButton(
            onPressed: () {
              _formKey.currentState!.reset();
            },
            child: const Text('Reset'),
          ),
        ],
      ),
    );
  }
}
