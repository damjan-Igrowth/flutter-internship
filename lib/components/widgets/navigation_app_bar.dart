import 'package:flutter/material.dart';
import 'package:flutter_internship/components/screens/component.dart';
import 'package:flutter_internship/shop/helpers/my_app1_icons.dart';
import 'package:flutter_internship/shop/widgets/sneakers_grid.dart';

class NavigationAppBar extends StatefulWidget {
  const NavigationAppBar({super.key});

  @override
  State<StatefulWidget> createState() {
    return _NavigationAppBarState();
  }
}

class _NavigationAppBarState extends State<NavigationAppBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });

        if (_currentIndex == 0) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ComponentClass()),
          );
        } else if (_currentIndex == 1) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SneakersGrid()),
          );
        }
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            ShopIcons.akar_icons_home,
            color: _currentIndex == 0
                ? const Color(0xFF007BFF)
                : const Color(0xFF757575),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            ShopIcons.ph_sneaker_move,
            color: _currentIndex == 1
                ? const Color(0xFF007BFF)
                : const Color(0xFF757575),
          ),
          label: 'Sneakers',
        ),
      ],
    );
  }
}
