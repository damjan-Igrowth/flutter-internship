import 'package:flutter/material.dart';
import 'package:flutter_internship/sneakers_shop/helpers/shop_icons_icons.dart';

class ShopItem {
  final String text;
  final IconData? icon;

  ShopItem({required this.text, this.icon});
}

List<ShopItem> categoryListItems = [
  ShopItem(text: 'Smartphones', icon: ShopIcons.smartphone),
  ShopItem(text: 'Laptops', icon: ShopIcons.laptop),
  ShopItem(text: 'Video Games', icon: ShopIcons.games),
  ShopItem(text: 'Audio', icon: ShopIcons.audio),
  ShopItem(text: 'Appliances', icon: ShopIcons.appliances),
];
List<ShopItem> companyListItems = [
  ShopItem(text: 'Apple'),
  ShopItem(text: 'Samsung'),
  ShopItem(text: 'Xiaomi'),
  ShopItem(text: 'Realme'),
  ShopItem(text: 'Oneplus'),
];
