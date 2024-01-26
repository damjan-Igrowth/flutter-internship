import 'package:flutter/material.dart';
import 'package:flutter_internship/helpers/my_flutter_app_icons.dart';
import 'package:flutter_internship/widgets/mobile/sole_sphere.dart';
import 'package:flutter_internship/widgets/mobile/sneakers.dart';

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
            MaterialPageRoute(builder: (context) => const SoleSphere()),
          );
        } else if (_currentIndex == 1) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Sneakers()),
          );
        }
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            MyFlutterApp.akar_icons_home,
            color: _currentIndex == 0
                ? const Color(0xFF007BFF)
                : const Color(0xFF757575),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            MyFlutterApp.ph_sneaker_move,
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
