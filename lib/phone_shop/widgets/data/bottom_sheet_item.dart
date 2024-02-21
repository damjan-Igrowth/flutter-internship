import 'package:flutter/material.dart';
import 'package:flutter_internship/sneakers_shop/helpers/shop_icons_icons.dart';

class BottomSheetItem {
  final String text;
  final IconData? icon;

  BottomSheetItem({required this.text, this.icon});
}

List<BottomSheetItem> categoryListItems = [
  BottomSheetItem(text: 'Smartphones', icon: ShopIcons.smartphone),
  BottomSheetItem(text: 'Laptops', icon: ShopIcons.laptop),
  BottomSheetItem(text: 'Video Games', icon: ShopIcons.games),
  BottomSheetItem(text: 'Audio', icon: ShopIcons.audio),
  BottomSheetItem(text: 'Appliances', icon: ShopIcons.appliances),
];
List<BottomSheetItem> companyListItems = [
  BottomSheetItem(text: 'Apple'),
  BottomSheetItem(text: 'Samsung'),
  BottomSheetItem(text: 'Xiaomi'),
  BottomSheetItem(text: 'Realme'),
  BottomSheetItem(text: 'Oneplus'),
];
