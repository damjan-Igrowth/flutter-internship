import 'package:flutter/material.dart';
import 'package:flutter_internship/sneakers_shop/helpers/shop_icons_icons.dart';

class TitleBackIcon extends StatelessWidget {
  const TitleBackIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            (ShopIcons.chevron_left),
            size: 24,
          ),
        ),
      ),
    );
  }
}
