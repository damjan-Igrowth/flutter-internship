import 'package:flutter/material.dart';

class ProductEditDetails {
  final String label;
  final Widget? suffixIcon;
  final String? suffixText;
  final bool? enabled;
  final String? initialValue;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final Function(String?)? onSaved;
  final Function(String)? onChanged;
  final bool isDescription;

  ProductEditDetails({
    required this.label,
    this.suffixIcon,
    this.suffixText,
    this.enabled,
    this.initialValue,
    this.validator,
    this.controller,
    this.onSaved,
    this.onChanged,
    this.isDescription = false,
  });
}

ProductEditDetails productEditName =
    ProductEditDetails(label: 'Product name', initialValue: 'Iphone 15 Pro');
ProductEditDetails productEditCompany =
    ProductEditDetails(label: 'Company', initialValue: 'Apple');
ProductEditDetails productEditCategory =
    ProductEditDetails(label: 'Category', initialValue: 'Smartphones');
ProductEditDetails productEditDescription = ProductEditDetails(
  label: 'Description',
  initialValue:
      'Lorem ipsum dolor sit amet consectetur. Ornare id ullamcorper et non. Massa in urna volutpat sed sagittis eget. Nullam sollicitudin viverra egestas ante. Vitae blandit.',
  isDescription: true,
);
ProductEditDetails productEditDiscount = ProductEditDetails(
  label: 'Discount',
  initialValue: '12.44',
  suffixText: '%',
);
ProductEditDetails productEditPrice = ProductEditDetails(
  label: 'Price',
  initialValue: '999.00',
  suffixText: '\$',
);
