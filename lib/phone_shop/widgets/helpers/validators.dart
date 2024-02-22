String? emptyFieldValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Empty field';
  }
  return null;
}

String? numericValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Empty field!';
  }
  if (double.tryParse(value.replaceAll(',', '.')) == null) {
    return 'Must be a valid number!';
  }
  return null;
}
